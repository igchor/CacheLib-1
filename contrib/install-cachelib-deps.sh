# TODO: put this into pmem/CacheLib
git clone https://github.com/igchor/CacheLib-1 CacheLib
cd CacheLib
git checkout docker_deps
cd ..

sed 's/sudo //' -i ./CacheLib/contrib/prerequisites-centos8.sh
./CacheLib/contrib/prerequisites-centos8.sh

for pkg in zstd googleflags googlelog googletest sparsemap fmt folly fizz wangle fbthrift ;
do
    ./CacheLib/contrib/build-package.sh -j -I /opt/ "$pkg"
done

rm -rf CacheLib
