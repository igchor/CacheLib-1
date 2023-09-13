""" This example shows how to use pmemkv-python binding as data store backend for
simple REST API service based on falcon framework."""

import falcon
from falcon.http_status import HTTPStatus
import argparse
import subprocess
from datetime import datetime
import glob

import atexit
import os
import json

from wsgiref import simple_server

def remove_files():
    files = glob.glob('/root/CacheLib/stats/*')
    for file in files:
        try:
            with open(file, "w") as f:
                f.write("")
        except OSError as e:
            print("Error: %s : %s" % (f, e.strerror))

class RunWorkload:
    def __init__(self):
        pass

    def on_post(self, req, resp):
        print(req)
        time = "{}".format(datetime.now().replace(microsecond=0)).replace(" ","_")
        payload = json.load(req.bounded_stream)
        if "workload_id" in payload:
            subprocess.Popen(["docker", "pause", "cachebench_1"]).communicate()
            subprocess.Popen(["docker", "pause", "cachebench_2"]).communicate()
            subprocess.Popen(["docker", "pause", "cachebench_3"]).communicate()
            subprocess.Popen(["docker", "pause", "cachebench_4"]).communicate()

            remove_files()

            with open("/root/CacheLib/stats/timestamp", "w") as f:
                f.write(time)

            if payload['workload_id'] == 1:
                subprocess.Popen(["docker", "unpause", "cachebench_1"])
                subprocess.Popen(["docker", "unpause", "cachebench_2"])
            elif payload['workload_id'] == 2:
                subprocess.Popen(["docker", "unpause", "cachebench_3"])
                subprocess.Popen(["docker", "unpause", "cachebench_4"])

class StopWorkload:
    def __init__(self):
        pass

    def on_post(self, req, resp):
        print(req)
        subprocess.Popen(["docker", "pause", "cachebench_1"]).communicate()
        subprocess.Popen(["docker", "pause", "cachebench_2"]).communicate()
        subprocess.Popen(["docker", "pause", "cachebench_3"]).communicate()
        subprocess.Popen(["docker", "pause", "cachebench_4"]).communicate()
        remove_files()

class ClearData:
    def __init__(self):
        pass

    def on_post(self, req, resp):
        print(req)

class HandleCORS(object):
    def __init__(self, origin):
        self.origin = origin

    def process_request(self, req, resp):
        resp.set_header('Access-Control-Allow-Origin', self.origin)
        resp.set_header("Access-Control-Allow-Headers", "Origin, X-Api-Key, X-Requested-With, Content-Type, Accept, Authorization");
        resp.set_header('Access-Control-Allow-Credentials', 'true')
        resp.set_header('Access-Control-Allow-Methods', '*')
        resp.set_header('Access-Control-Max-Age', 1728000)  # 20 days
        print(resp)
        if req.method == 'OPTIONS':
            raise HTTPStatus(falcon.HTTP_200, body='\n')

def main():
    argParser = argparse.ArgumentParser()
    argParser.add_argument("-p", "--port", type=int)
    argParser.add_argument("-o", "--origin", help="allow requests from this origin")

    args = argParser.parse_args()

    app = falcon.API(middleware=[HandleCORS(args.origin)])
    app.add_route('/run_workload', RunWorkload())
    app.add_route('/stop_workload', StopWorkload())
    #app.add_route('/clear_data', ClearData())

    httpd = simple_server.make_server('0.0.0.0', args.port, app)
    print("Starting server")
    httpd.serve_forever()

if __name__ == '__main__':
    main()
