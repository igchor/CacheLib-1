#!/usr/bin/python3
import sys
import json
import re
import io
import os

def num(s):
    try:
        return int(s)
    except ValueError:
        return float(s)

def main():
    args = sys.argv[1:]
    stats = args[0]
    timestamp = args[1]

    with open(stats) as file:
       data = file.read()

    blocks = data.split("\n\n")
    output = []
    blocks = blocks[-2:-1]

    for block in blocks:
        buf = io.StringIO(block)
        lines  = buf.readlines()

        del lines[lines.index('== Hit Ratio Stats Since Last ==\n'):lines.index('== Throughput Stats ==\n')]

        for line in lines:
            if 'ops completed' in line:
                pass
            elif ':' in line:
                key, value, *_ = [x.rstrip(', \n').replace(" ","") for x in line.split(':') if not len(x) == 2]
                key = re.sub('__+' , '_', key)
                key = re.sub('[^\d\w]', '', key)

                value = re.sub('[^0-9.]', '', value)
                if value == '':
                    continue
                value = num(value)

                filename = os.path.basename(stats)
                workload_id = filename
                run_id = timestamp
                print("{}{} {}".format(key, "{workload=\"" + workload_id + "\",run=\"" + run_id + "\"}", value))
if __name__ == '__main__':
    main()

