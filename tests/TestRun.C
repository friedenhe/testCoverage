/*---------------------------------------------------------------------------*\

    DAFoam  : Discrete Adjoint with OpenFOAM
    Version : v2

\*---------------------------------------------------------------------------*/
#include "TestRun.H"

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

namespace Foam
{

// Constructors
TestRun::TestRun()
{
}

TestRun::~TestRun()
{
}

void TestRun::init()
{
    std::cout<<"init..."<<std::endl;
}

void TestRun::run()
{
    int a=1.0;
    int b=3.0+a;
    std::cout<<"run..."<<std::endl;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

} // End namespace Foam

// ************************************************************************* //
