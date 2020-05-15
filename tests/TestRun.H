/*---------------------------------------------------------------------------*\

    DAFoam  : Discrete Adjoint with OpenFOAM
    Version : v2

    Description:
        Python wrapper library for TestRun

\*---------------------------------------------------------------------------*/

#ifndef TestRun_H
#define TestRun_H

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
#include <iostream>
namespace Foam
{

/*---------------------------------------------------------------------------*\
                       Class TestRun Declaration
\*---------------------------------------------------------------------------*/

class TestRun
{

private:

protected:
  

public:
    // Constructors

    /// Construct from components
    TestRun(
       );

    /// Destructor
    virtual ~TestRun();

    /// initialize all the state and intermedia variables
    void init();
    
    void run();

};

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

} // End namespace Foam

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

#endif
