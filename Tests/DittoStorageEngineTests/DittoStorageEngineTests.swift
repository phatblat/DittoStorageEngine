import XCTest
@testable import DittoStorageEngine

final class DittoStorageEngineTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        Task {
            let text = await DittoStorageEngine().text
            XCTAssertEqual(text, "Hello, World!")
        }
    }
}
