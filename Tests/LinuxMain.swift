import XCTest

import WithTests

var tests = [XCTestCaseEntry]()
tests += WithTests.allTests()
XCTMain(tests)
