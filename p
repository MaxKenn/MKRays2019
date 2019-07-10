/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  4.1                                   |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    object      p;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 0;

boundaryField
{
    injector
    {
        type            zeroGradient;
    }
    outlet
    {
        type            totalPressure;
        p0              uniform 0;
        phi             phi;
        rho             none;
        psi             none;
        gamma           1;
    }
    walls
    {
        type            zeroGradient;
    }
    inlet
    {
        type            zeroGradient;
    }
    bottomEmptyFaces
    {
        type            empty;
    }
    topEmptyFaces
    {
        type            empty;
    }
}

// ************************************************************************* //
