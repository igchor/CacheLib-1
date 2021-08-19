"use strict";(self.webpackChunkmy_website=self.webpackChunkmy_website||[]).push([[1798],{3905:function(e,t,n){n.d(t,{Zo:function(){return c},kt:function(){return u}});var a=n(7294);function i(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function r(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);t&&(a=a.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,a)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?r(Object(n),!0).forEach((function(t){i(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):r(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,a,i=function(e,t){if(null==e)return{};var n,a,i={},r=Object.keys(e);for(a=0;a<r.length;a++)n=r[a],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);for(a=0;a<r.length;a++)n=r[a],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(i[n]=e[n])}return i}var m=a.createContext({}),s=function(e){var t=a.useContext(m),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},c=function(e){var t=s(e.components);return a.createElement(m.Provider,{value:t},e.children)},d={inlineCode:"code",wrapper:function(e){var t=e.children;return a.createElement(a.Fragment,{},t)}},p=a.forwardRef((function(e,t){var n=e.components,i=e.mdxType,r=e.originalType,m=e.parentName,c=l(e,["components","mdxType","originalType","parentName"]),p=s(n),u=i,h=p["".concat(m,".").concat(u)]||p[u]||d[u]||r;return n?a.createElement(h,o(o({ref:t},c),{},{components:n})):a.createElement(h,o({ref:t},c))}));function u(e,t){var n=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var r=n.length,o=new Array(r);o[0]=p;var l={};for(var m in t)hasOwnProperty.call(t,m)&&(l[m]=t[m]);l.originalType=e,l.mdxType="string"==typeof e?e:i,o[1]=l;for(var s=2;s<r;s++)o[s]=n[s];return a.createElement.apply(null,o)}return a.createElement.apply(null,n)}p.displayName="MDXCreateElement"},1391:function(e,t,n){n.r(t),n.d(t,{frontMatter:function(){return l},contentTitle:function(){return m},metadata:function(){return s},toc:function(){return c},default:function(){return p}});var a=n(7462),i=n(3366),r=(n(7294),n(3905)),o=["components"],l={id:"Item_and_ItemHandle",title:"Item and ItemHandle"},m=void 0,s={unversionedId:"Cache_Library_User_Guides/Item_and_ItemHandle",id:"Cache_Library_User_Guides/Item_and_ItemHandle",isDocsHomePage:!1,title:"Item and ItemHandle",description:"An item is the fundamental memory allocation backing an object in cache. Throughout this guide, we sometimes use item and allocation interchangeably. We use allocation when we discuss memory allocation or footprint. And we use item when we want to emphasize cached objects. An item is associated with a key and a byte array allocated by the allocate() method. We use the key to look up the item.",source:"@site/docs/Cache_Library_User_Guides/Item_and_ItemHandle.md",sourceDirName:"Cache_Library_User_Guides",slug:"/Cache_Library_User_Guides/Item_and_ItemHandle",permalink:"/CacheLib/docs/Cache_Library_User_Guides/Item_and_ItemHandle",editUrl:"https://github.com/facebook/docusaurus/edit/master/website/docs/Cache_Library_User_Guides/Item_and_ItemHandle.md",version:"current",frontMatter:{id:"Item_and_ItemHandle",title:"Item and ItemHandle"},sidebar:"someSidebar",previous:{title:"faq",permalink:"/CacheLib/docs/Cache_Library_User_Guides/faq"},next:{title:"eviction policy",permalink:"/CacheLib/docs/Cache_Library_User_Guides/eviction_policy"}},c=[{value:"Item memory overhead",id:"item-memory-overhead",children:[]},{value:"ItemHandle lifetime",id:"itemhandle-lifetime",children:[]},{value:"Item lifetime",id:"item-lifetime",children:[]}],d={toc:c};function p(e){var t=e.components,l=(0,i.Z)(e,o);return(0,r.kt)("wrapper",(0,a.Z)({},d,l,{components:t,mdxType:"MDXLayout"}),(0,r.kt)("p",null,"An ",(0,r.kt)("em",{parentName:"p"},"item")," is the fundamental memory allocation backing an object in cache. Throughout this guide, we sometimes use item and allocation interchangeably. We use ",(0,r.kt)("em",{parentName:"p"},"allocation")," when we discuss memory allocation or footprint. And we use ",(0,r.kt)("em",{parentName:"p"},"item")," when we want to emphasize cached objects. An item is associated with a key and a byte array allocated by the ",(0,r.kt)("inlineCode",{parentName:"p"},"allocate()")," method. We use the key to look up the item."),(0,r.kt)("p",null,"An ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle")," is similar to a ",(0,r.kt)("inlineCode",{parentName:"p"},"std::shared_ptr<Item>"),". Cachelib APIs like ",(0,r.kt)("inlineCode",{parentName:"p"},"find()"),", ",(0,r.kt)("inlineCode",{parentName:"p"},"allocate()"),", and ",(0,r.kt)("inlineCode",{parentName:"p"},"insertOrReplace()")," return an ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle"),". Because an item may be accessed concurrently, to ensure that the underlying memory backing the item is valid, use its ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle")," to access it. This guarantees that during the lifetime of the ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle"),", its item will never be evicted or reclaimed by any other thread."),(0,r.kt)("p",null,"In addition, ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle")," also provides future semantics offered in Hybrid Cache(flash). For more information, see ",(0,r.kt)("a",{parentName:"p",href:"HybridCache/"},"Hybrid Cache"),"."),(0,r.kt)("h2",{id:"item-memory-overhead"},"Item memory overhead"),(0,r.kt)("p",null,"When you call the ",(0,r.kt)("inlineCode",{parentName:"p"},"allocate()")," method to allocate memory from cache for an item, cachelib allocates extra 31 bytes (overhead) for the item's metadata, which is used to manage the item's lifetime and other aspects. For example, cachelib stores a refcount, pointer hooks to the intrusive data structures for cache like hash table, LRU, creation time, and expiration time. Some of these are for internal book keeping; and others are accessible through the item's public API. For details, see allocator/CacheItem.h."),(0,r.kt)("h2",{id:"itemhandle-lifetime"},"ItemHandle lifetime"),(0,r.kt)("p",null,"Like a ",(0,r.kt)("inlineCode",{parentName:"p"},"std::shared_ptr"),", an ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle"),"'s lifetime is independent from the other instances of ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle")," that point to the same item. Holding an ItemHandle guarantees that the item it points to is alive at least as long as this instance of ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle")," is alive. The next section describes what ",(0,r.kt)("em",{parentName:"p"},"at least")," means. An ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle")," is only ",(0,r.kt)("em",{parentName:"p"},"movable"),"."),(0,r.kt)("h2",{id:"item-lifetime"},"Item lifetime"),(0,r.kt)("p",null,"Items in cache can be evicted to make space for other new items. For any item, having its outstanding ",(0,r.kt)("inlineCode",{parentName:"p"},"ItemHandle")," prevents us from evicting the item or release its memory due to slab release."),(0,r.kt)("p",null,"An item ",(0,r.kt)("inlineCode",{parentName:"p"},"x")," without outstanding handles is destroyed immediately when you explicitly call ",(0,r.kt)("inlineCode",{parentName:"p"},"remove()")," to remove it or call ",(0,r.kt)("inlineCode",{parentName:"p"},"insertOrReplace()")," to replace it with another item having the same key as ",(0,r.kt)("inlineCode",{parentName:"p"},"x"),"'s. With outstanding handles, the item's memory is guaranteed to not be reclaimed until the last outstanding handle is dropped. It is similar to use a ",(0,r.kt)("inlineCode",{parentName:"p"},"shared_ptr")," to ensure that the underlying object is not destroyed until the last reference goes out of scope."),(0,r.kt)("p",null,"See the following state diagram for the state of a cachelib item when we're using the HybridCache setup (ram + flash).\n",(0,r.kt)("img",{src:n(1885).Z})))}p.isMDXComponent=!0},1885:function(e,t,n){t.Z=n.p+"assets/images/item_state-5488f8e93bf662ba55fd6899a1b34414.png"}}]);