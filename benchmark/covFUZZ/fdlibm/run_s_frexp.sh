#!/bin/bash

# For Mac
if [ $(command uname) = "Darwin" ]; then
    if ! [ -x "$(command -v greadlink)"  ]; then
        brew install coreutils
    fi
    BIN_PATH=$(greadlink -f "$0")
    ROOT_DIR=$(dirname $(dirname $BIN_PATH))
# For Linux
else
    BIN_PATH=$(readlink -f "$0")
    ROOT_DIR=$(dirname $(dirname $BIN_PATH))
fi

if ! [ -d "${ROOT_DIR}/../../tool/covFPFUZZ/build/bin" ]; then
    ${ROOT_DIR}/../../tool/install_covFPFUZZ.sh
fi

export PATH=${ROOT_DIR}/../../clang+llvm/ua_asan/bin:$PATH
export LD_LIBRARY_PATH=${ROOT_DIR}/../../clang+llvm/ua_asan/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export AFL_PATH=${ROOT_DIR}/../../tool/covFPFUZZ

if ! [ $(command llvm-config --version) = "6.0.1" ]; then
    echo ""
    echo "You can simply run tool/build_AFL.sh to build the environment."
    echo ""
    echo "Please set:"
    echo "export PATH=$PREFIX/clang+llvm/bin:\$PATH"
    echo "export LD_LIBRARY_PATH=$PREFIX/clang+llvm/lib:\$LD_LIBRARY_PATH"
elif ! [ -d "${ROOT_DIR}/../../clang+llvm"  ]; then
    echo ""
    echo "You can simply run tool/build_MemLock.sh to build the environment."
    echo ""
    echo "Please set:"
    echo "export PATH=$PREFIX/clang+llvm/ua_asan/bin:\$PATH"
    echo "export LD_LIBRARY_PATH=$PREFIX/clang+llvm/ua_asan/lib:\$LD_LIBRARY_PATH"
else
    echo "start ..."
    cd ${ROOT_DIR}/fdlibm/s_frexp
    ${ROOT_DIR}/../../tool/covFPFUZZ/build/bin/afl-clang-fast s_frexp.c -o s_frexp -lm -lgsl -lgslcblas
    if [ -d "${ROOT_DIR}/fdlibm/s_frexp/in"  ]; then
        rm -rf in
    fi
    mkdir in
    echo 0.0 0 > in/testcase
    echo -0.981415806270390045363 1 > in/testcase1
    echo 1.0 -1 > in/testcase2
    echo nan 65535 > in/testcase3
    echo inf -65535 > in/testcase4
    i=0
    for ((i=1; i<100; i++))
    do
        if ! [ -d "${ROOT_DIR}/fdlibm/s_frexp/out_covFPFUZZ$i" ]; then
            break
        fi
    done
    export ASAN_OPTIONS=detect_odr_violation=0:allocator_may_return_null=0:abort_on_error=1:symbolize=0:detect_leaks=0
    ${ROOT_DIR}/../../tool/covFPFUZZ/build/bin/afl-fuzz -i ${ROOT_DIR}/fdlibm/s_frexp/in -o ${ROOT_DIR}/fdlibm/s_frexp/out_covFPFUZZ$i -m none -c -t 5000 -- ${ROOT_DIR}/fdlibm/s_frexp/s_frexp @@
fi
