module internal.testutils;

public import std.stdio;

const(string) unitTestStart =
    `unittest {
        writeln("-----");
        writeln("Starting unittest for ", __MODULE__);
        writeln("-----");
    }`;


const(string) unitTestPassed =
    `unittest {
        writeln("-----");
        writeln("Starting unittest for ", __MODULE__);
        writeln("-----");
    }`;
