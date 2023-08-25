#!/bin/sh

rm -rf build
mkdir build && cd build

cmake \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_PYTHON_MODULE=OFF \
    -DBUILD_ISPC_MODULE=OFF \
    -DBUILD_GUI=OFF \
    -DWITH_IPPICV=OFF \
    -DUSE_SYSTEM_BLAS=ON \
    -DBUILD_VTK_FROM_SOURCE=OFF \
    -DBUILD_FILAMENT_FROM_SOURCE=OFF \
    -GXcode \
    -DCMAKE_TOOLCHAIN_FILE=./util/platforms/iOS.cmake \
    ..

# Open3D build options
# option(WITH_OPENMP                "Use OpenMP multi-threading"               ON )
# option(GLIBCXX_USE_CXX11_ABI      "Set -D_GLIBCXX_USE_CXX11_ABI=1"           ON ) // disaibled for python

# 3rd-party build options
# if(LINUX_AARCH64 OR APPLE_AARCH64)
#     option(USE_BLAS               "Use BLAS/LAPACK instead of MKL"           ON )
# else()
#     option(USE_BLAS               "Use BLAS/LAPACK instead of MKL"           OFF)
# endif()


# option(PREFER_OSX_HOMEBREW        "Prefer Homebrew libs over frameworks"     ON )