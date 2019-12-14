rm -rf build
mkdir build
cd build
snap run cmake -DCMAKE_TOOLCHAIN_FILE=../toolchain.cmake -DGTEST_LIBRARY=../submodules/googletest/build/install/lib/libgtest.a -DGTEST_MAIN_LIBRARY=../submodules/googletest/build/install/lib/libgtest_main.a -DGTEST_INCLUDE_DIR=../submodules/googletest/build/install/include/ ..
snap run cmake --build .
snap run cmake -DCMAKE_INSTALL_PREFIX=install -P cmake_install.cmake