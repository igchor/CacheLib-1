"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[3018],{3905:function(e,t,n){n.d(t,{Zo:function(){return h},kt:function(){return d}});var a=n(7294);function r(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);t&&(a=a.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,a)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){r(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function c(e,t){if(null==e)return{};var n,a,r=function(e,t){if(null==e)return{};var n,a,r={},o=Object.keys(e);for(a=0;a<o.length;a++)n=o[a],t.indexOf(n)>=0||(r[n]=e[n]);return r}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(a=0;a<o.length;a++)n=o[a],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(r[n]=e[n])}return r}var s=a.createContext({}),l=function(e){var t=a.useContext(s),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},h=function(e){var t=l(e.components);return a.createElement(s.Provider,{value:t},e.children)},p={inlineCode:"code",wrapper:function(e){var t=e.children;return a.createElement(a.Fragment,{},t)}},u=a.forwardRef((function(e,t){var n=e.components,r=e.mdxType,o=e.originalType,s=e.parentName,h=c(e,["components","mdxType","originalType","parentName"]),u=l(n),d=r,f=u["".concat(s,".").concat(d)]||u[d]||p[d]||o;return n?a.createElement(f,i(i({ref:t},h),{},{components:n})):a.createElement(f,i({ref:t},h))}));function d(e,t){var n=arguments,r=t&&t.mdxType;if("string"==typeof e||r){var o=n.length,i=new Array(o);i[0]=u;var c={};for(var s in t)hasOwnProperty.call(t,s)&&(c[s]=t[s]);c.originalType=e,c.mdxType="string"==typeof e?e:r,i[1]=c;for(var l=2;l<o;l++)i[l]=n[l];return a.createElement.apply(null,i)}return a.createElement.apply(null,n)}u.displayName="MDXCreateElement"},759:function(e,t,n){n.r(t),n.d(t,{frontMatter:function(){return c},contentTitle:function(){return s},metadata:function(){return l},toc:function(){return h},default:function(){return u}});var a=n(7462),r=n(3366),o=(n(7294),n(3905)),i=["components"],c={id:"Developing_for_Cachebench",title:"Developing for Cachebench"},s=void 0,l={unversionedId:"Cache_Library_User_Guides/Developing_for_Cachebench",id:"Cache_Library_User_Guides/Developing_for_Cachebench",isDocsHomePage:!1,title:"Developing for Cachebench",description:"This guide will explain how CacheBench is structured and how to add new configs or build features for it.",source:"@site/docs/Cache_Library_User_Guides/Developing_for_Cachebench.md",sourceDirName:"Cache_Library_User_Guides",slug:"/Cache_Library_User_Guides/Developing_for_Cachebench",permalink:"/CacheLib/docs/Cache_Library_User_Guides/Developing_for_Cachebench",editUrl:"https://github.com/facebook/docusaurus/edit/master/website/docs/Cache_Library_User_Guides/Developing_for_Cachebench.md",version:"current",frontMatter:{id:"Developing_for_Cachebench",title:"Developing for Cachebench"},sidebar:"someSidebar",previous:{title:"Cachebench Overview",permalink:"/CacheLib/docs/Cache_Library_User_Guides/Cachebench_Overview"},next:{title:"Configuring cachebench parameters",permalink:"/CacheLib/docs/Cache_Library_User_Guides/Configuring_cachebench_parameters"}},h=[{value:"A Simple Test Config",id:"a-simple-test-config",children:[]},{value:"Test Config For Prod-like Workload",id:"test-config-for-prod-like-workload",children:[]},{value:"Reply Captured Production Traces",id:"reply-captured-production-traces",children:[]}],p={toc:h};function u(e){var t=e.components,c=(0,r.Z)(e,i);return(0,o.kt)("wrapper",(0,a.Z)({},p,c,{components:t,mdxType:"MDXLayout"}),(0,o.kt)("p",null,"This guide will explain how CacheBench is structured and how to add new configs or build features for it."),(0,o.kt)("h1",{id:"anatomy-of-cachebench"},"Anatomy Of CacheBench"),(0,o.kt)("p",null,"CacheBench is a benchmark suite that can read a workload configuration file, simulate cache behavior as stipulated in the config, and produce performance summary for the simulated cache. Results include metrics such as hit rate, evictions, write rate to flash cache, latency, etc. The workload configs can be hand-written by a human, produced by a workload analyzer, or backed by raw production cachelib traces. The main customization points into CacheBench are through writing workload configs or custom workload generators.\n",(0,o.kt)("img",{src:n(8567).Z})),(0,o.kt)("h1",{id:"write-a-new-test-config"},"Write A New Test Config"),(0,o.kt)("h2",{id:"a-simple-test-config"},"A Simple Test Config"),(0,o.kt)("p",null,"The following config sets up a basic cache instance with two DRAM cache pools and also sets up Navy and runs it in a DRAM-backed mode (useful for testing). The test config itself specifies the number of operations per threads, number of threads, number of keys, and then proceeds to describe the distribution of its key and value sizes and the distribution of the operations. It\u2019s an example of a simple config that is usually written by a person for the purpose of adding a new integration test or a simple benchmark for a particular feature. Configs in this manner are not meant for representing real life workloads and used for performance measurements. For reference on what each option means, please refer to these files."),(0,o.kt)("ul",null,(0,o.kt)("li",{parentName:"ul"},"Cache Config: ",(0,o.kt)("a",{parentName:"li",href:"https://fburl.com/zrul0wof"},"https://fburl.com/zrul0wof")),(0,o.kt)("li",{parentName:"ul"},"Test Config: ",(0,o.kt)("a",{parentName:"li",href:"https://fburl.com/8x5318bv"},"https://fburl.com/8x5318bv"))),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre"},'{\n  "cache_config" : {\n    "cacheSizeMB" : 128,\n    "poolRebalanceIntervalSec" : 1,\n    "moveOnSlabRelease" : false,\n\n    "numPools" : 2,\n    "poolSizes" : [0.3, 0.7],\n\n    "dipperSizeMB" : 512,\n    "dipperBackend" : "navy_dipper",\n    "enableChainedItem" : true,\n    "dipperUseDirectIO": false,\n    "dipperFilePath" : "/dev/shm/cachebench"\n  },\n  "test_config" :\n    {\n      "prepopulateCache" : true,\n\n      "numOps" : 100000,\n      "numThreads" : 16,\n      "numKeys" : 100000,\n      "distribution" :  "range",\n\n      "keySizeRange" : [1, 8, 64],\n      "keySizeRangeProbability" : [0.3, 0.7],\n\n      "valSizeRange" : [256, 1024, 4096],\n      "valSizeRangeProbability" : [0.2, 0.8],\n\n      "chainedItemLengthRange" : [1, 2, 4, 32],\n      "chainedItemLengthRangeProbability" : [0.8, 0.18, 0.02],\n\n      "chainedItemValSizeRange" : [1, 128, 256, 1024, 4096, 20480],\n      "chainedItemValSizeRangeProbability" : [0.1, 0.1, 0.2, 0.3, 0.3],\n\n      "getRatio" : 0.5,\n      "setRatio" : 0.3,\n      "addChainedRatio" : 0.2,\n      "keyPoolDistribution": [0.5, 0.5],\n      "opPoolDistribution" : [0.5, 0.5]\n    }\n}\n')),(0,o.kt)("p",null,"The value size will be changed to max(valSize, sizeof(CacheValue)) when allocate in the cache for cachebench. If the size distribution is important to the test, this may affect the test."),(0,o.kt)("h2",{id:"test-config-for-prod-like-workload"},"Test Config For Prod-like Workload"),(0,o.kt)("p",null,"To examine a prod-like config, please refer to these files."),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre"},"cachelib/cachebench/test_configs/hit_ratio_test_configs/memcache_twmemcache.reg.altoona_model_hr.json\ncachelib/cachebench/test_configs/hit_ratio_test_configs/memcache_twmemcache.reg.altoona_pop.json\ncachelib/cachebench/test_configs/hit_ratio_test_configs/memcache_twmemcache.reg.altoona_sizes.json\n")),(0,o.kt)("p",null,"The file that ends with ",(0,o.kt)("inlineCode",{parentName:"p"},"model_hr.json")," is the source file that describes the basic cache setup (similar to how we do it in the simple test config example above). The ",(0,o.kt)("inlineCode",{parentName:"p"},"pop.json")," file describes the popularity distribution across the key space and the ",(0,o.kt)("inlineCode",{parentName:"p"},"sizes.json")," file describes the value distribution across the key space. They are key to getting close to simulate a production workload.\nThese files are generated by our workload analyzer (",(0,o.kt)("a",{parentName:"p",href:"https://fburl.com/diffusion/zipyekcj"},"https://fburl.com/diffusion/zipyekcj"),"). We currently have the ability to take the most recent Tao and Memcache traces and generate workload configs to simulate their caching behavior. For example to generate a workload config that simulates the most recent two days of traffic, simply run:"),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre"},"cd cachelib/workload_characterization/\n./presto.sh && ./parse_traces.sh\n")),(0,o.kt)("h2",{id:"reply-captured-production-traces"},"Reply Captured Production Traces"),(0,o.kt)("p",null,"We can also use captured cachelib traces to replay the same lookup traffic from prod. This is as close as we can get to production and is very useful when we want to simulate a cache setup that is similar to production. To do that, we need to size our cache to the same scale as our trace. If the trace is sampled at 0.01% of the traffic across 1000 hosts, then we need a cache size that\u2019s roughly 10% of production. Running the script above would also generate a config that uses the captured traces. For example, look at ",(0,o.kt)("inlineCode",{parentName:"p"},"cachelib/cachebench/test_configs/hit_ratio_test_configs/memcache_twmemcache.reg.altoona_trace_hr.json"),"."),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre"},'{\n  "cache_config": {\n    "cacheSizeMB": 8192,\n    "poolRebalanceIntervalSec": 0\n  },\n  "test_config":\n    {\n      "enableLookaside": true,\n      "generator": "replay",\n      "numOps": 240000000,\n      "numThreads": 1,\n      "prepopulateCache": true,\n      "traceFileName": "memcache_twmemcache.reg.altoona.csv"\n    }\n\n}\n')),(0,o.kt)("p",null,"Due to the size of trace file, we do not store the raw traces in cachebench repo. So to run the config above, the user must first fetch the raw trace locally and put it in the same directory as the config file."),(0,o.kt)("h1",{id:"write-a-new-workload-generator"},"Write A New Workload Generator"),(0,o.kt)("p",null,"Workload generator needs to implement an interface that CacheBench\u2019s Cache implementation expects. The most important two APIs are as follows."),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre"},"# Get a request for our next operation. The request contains key and size.\nconst Request& getReq(uint8_t poolId, std::mt19937& gen);\n\n# Get an operation to go with the generated request (e.g. get, set, del)\nOpType getOp(uint8_t pid, std::mt19937& gen);\n")),(0,o.kt)("p",null,"For an example, please look at OnlineGenerator (",(0,o.kt)("a",{parentName:"p",href:"https://fburl.com/diffusion/tpvf5ovt"},"https://fburl.com/diffusion/tpvf5ovt"),") which implements a generator that use distribution descriptions for popularity and value sizes to generates requests."))}u.isMDXComponent=!0},8567:function(e,t,n){t.Z=n.p+"assets/images/cachebench-25d1d476ed27af8ec3a0b5033571dd1a.png"}}]);