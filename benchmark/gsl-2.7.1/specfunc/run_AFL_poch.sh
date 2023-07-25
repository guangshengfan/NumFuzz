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

if ! [ -d "${ROOT_DIR}/../../tool/AFL/build/bin" ]; then
    ${ROOT_DIR}/../../tool/install_AFL.sh
fi

export PATH=${ROOT_DIR}/../../clang+llvm/ua_asan/bin:$PATH
export LD_LIBRARY_PATH=${ROOT_DIR}/../../clang+llvm/ua_asan/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export AFL_PATH=${ROOT_DIR}/../../tool/AFL

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
    cd ${ROOT_DIR}/specfunc/gsl_sf_poch
#    ${ROOT_DIR}/../../tool/AFL-2.52b/build/bin/afl-clang-fast poch.c -o poch -lm -lgsl -lgslcblas
    if [ -d "${ROOT_DIR}/specfunc/gsl_sf_poch/in"  ]; then
        rm -rf in
    fi
    mkdir in
    echo 0.5 1.0 > in/testcase
    echo 2.0 0.1 > in/testcase1
    echo 0.981415806270390045363 1.0 > in/testcase2
    i=0
    for ((i=1; i<100; i++))
    do
        if ! [ -d "${ROOT_DIR}/specfunc/gsl_sf_poch/out_AFL$i" ]; then
            break
        fi
    done
    export ASAN_OPTIONS=detect_odr_violation=0:allocator_may_return_null=0:abort_on_error=1:symbolize=0:detect_leaks=0
    ${ROOT_DIR}/../../tool/AFL/build/bin/afl-fuzz -i ${ROOT_DIR}/specfunc/gsl_sf_poch/in -o ${ROOT_DIR}/specfunc/gsl_sf_poch/out_AFL$i -m none -t 5000 -- ${ROOT_DIR}/specfunc/gsl_sf_poch/poch @@
fi
