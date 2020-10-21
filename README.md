GridDB C Client for MacOS

## Overview

The GridDB C Client provides a C interface for GridDB.
Please refer to [C API Reference](http://griddb.github.io/docs-en/manuals/GridDB_C_API_Reference.html) for detailed information.

## Operating environment

Library building and program execution are checked in the environment below.

    OS: MacOS Catalina 10.15 (clang 11.0.3)
    GridDB server: V4.5 CE(Community Edition), CentOS 7.8(x64) (gcc 4.8.5)

### Homebrew Tap for GridDB C Client

#### Install

This repository contains the [Hombrew Tap](https://docs.brew.sh/Taps) for griddb-c-client.
To add this repository and install griddb-c-client, please following:

    $ brew tap griddb/griddb-c-client
    $ brew install griddb-c-client

Alternatively you can also install the griddb c client directly (without adding a tap globally) with command:

    $ brew install griddb/griddb-c-client/griddb-c-client

#### Execute a sample program
GridDB server need to be started in advance.

    $ wget https://raw.githubusercontent.com/griddb/c_client/master/client/c/sample/sample1.c
    $ gcc sample1.c -lgridstore
    $ ./a.out <GridDB notification address(default is 239.0.0.1)> <GridDB notification port(default is 31999)>
      <GridDB cluster name> <GridDB user> <GridDB password>
      -->Person: name=name02 status=false count=2 lob=[65, 66, 67, 68, 69, 70, 71, 72, 73, 74]

(Additional information)
- The gridstore.h file on /usr/local/Cellar/griddb-c-client/4.5.1/include folder is used for building.
- The libgridstore.0.dylib file on /usr/local/Cellar/griddb-c-client/4.5.1/lib folder is used for building and executing.

## Document
  Refer to the file below for more detailed information.
  - [C API Reference](http://griddb.github.io/docs-en/manuals/GridDB_C_API_Reference.html)

Note: GEOMETRY type is not available for C Client CE(Community Edition).

## Community
  * Issues
    Use the GitHub issue function if you have any requests, questions, or bug reports.
  * PullRequest
    Use the GitHub pull request function if you want to contribute code.
    You'll need to agree GridDB Contributor License Agreement(CLA_rev1.1.pdf).
    By using the GitHub pull request function, you shall be deemed to have agreed to GridDB Contributor License Agreement.

## License
  The license is Apache License, version 2.0.
