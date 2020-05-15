
# distutils: language = c++
# distutils: sources = TestRun.C

'''
    DAFoam  : Discrete Adjoint with OpenFOAM
    Version : v2

    Description:
        Cython wrapper functions that call OpenFOAM libraries defined
        in the *.C and *.H files. The python naming convention is to
        add "py" before the C++ class name
'''

# for using Petsc
# from petsc4py.PETSc cimport Vec, PetscVec

# declear cpp functions
cdef extern from "TestRun.H" namespace "Foam":
    cppclass TestRun:
        TestRun() except +
        void init()
        void run()

# create python wrappers that call cpp functions
cdef class pyTestRun:

    # define a class pointer for cpp functions
    cdef:
        TestRun * _thisptr

    # initialize this class pointer with NULL
    def __cinit__(self):
        self._thisptr = NULL

    # deallocate the class pointer, and
    # make sure we don't have memory leak
    def __dealloc__(self):
        if self._thisptr != NULL:
            del self._thisptr

    # point the class pointer to the cpp class constructor
    def __init__(self):
        '''
        Parameters
        ----------

        argsAll: char
            Chars that contains all the arguments
            for running OpenFOAM solvers, including
            the name of the solver.

        pyOptions: dict
            Dictionary that defines all the options
            in DAFoam

        Examples
        --------
        aeroOptions = {'solverName' : 'TestRun' }
        solver = TestRun("TestRun -parallel -python",aeroOptions)
        '''
        self._thisptr = new TestRun()

    # wrap all the other memeber functions in the cpp class
    def init(self):
        self._thisptr.init()
    def run(self):
        self._thisptr.run()
