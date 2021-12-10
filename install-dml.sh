git clone --recursive https://github.com/intel/DML.git
cd DML
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr ..
cmake --build . --target install
cd ..
rm -rf build
cd ..
rm -rf DML


