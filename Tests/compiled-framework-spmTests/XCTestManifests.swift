import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(compiled_framework_spmTests.allTests),
    ]
}
#endif
