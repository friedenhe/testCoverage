"""
    DAFoam  : Discrete Adjoint with OpenFOAM
    Version : v2

    Description:
        Cython setup file for wrapping OpenFOAM libraries and solvers.
        One needs to set include dirs/files and flags according to the
        information in Make/options and Make/files in OpenFOAM libraries
        and solvers. Then, follow the detailed instructions below. The
        python naming convention is to add "py" before the C++ class name
"""

from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize
import os

libName = "pyTestRun"

os.environ["CC"] = "gcc"
os.environ["CXX"] = "g++"

# These setup should reproduce calling wmake to compile OpenFOAM libraries and solvers
ext = [
    Extension(
        libName,
        # All source files, taken from Make/files
        sources=["pyTestRun.pyx", "TestRun.C"],
        # All include dirs, refer to Make/options in OpenFOAM
        include_dirs=[
            "./",
        ],
        # These are from Make/options:EXE_LIBS
        libraries=["gcov"
        ],
        # These are pathes of linked libraries
        library_dirs=[
            
        ],
        # All other flags for OpenFOAM, users don't need to touch this
        extra_compile_args=[
            "-std=c++11","-coverage"
        ],
        # Extra link flags for OpenFOAM, users don't need to touch this
        extra_link_args=[],
    )
]


setup(
    name=libName,
    packages=[libName],
    description="Cython wrapper for OpenFOAM",
    long_description="Cython wrapper for OpenFOAM",
    ext_modules=cythonize(ext, language_level=3),
)  # languate_level=3 means python3
