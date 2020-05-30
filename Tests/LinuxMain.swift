import XCTest

import compiled_framework_spmTests

var tests = [XCTestCaseEntry]()
tests += compiled_framework_spmTests.allTests()
XCTMain(tests)
