module internal.testutils;

public import std.stdio;

const(string) unitTestStart =
    `unittest {
        writeln("Starting unittest for ", __MODULE__);
    }`;


const(string) unitTestPassed =
    `unittest {
        writeln("Unittest passed for ", __MODULE__);
    }`;
