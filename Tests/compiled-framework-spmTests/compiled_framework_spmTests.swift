import XCTest
@testable import compiled_framework_spm

final class compiled_framework_spmTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(compiled_framework_spm().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
