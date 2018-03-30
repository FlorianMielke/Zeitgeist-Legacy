import XCTest
@testable import Zeitgeist

class TimeTest: XCTestCase {
    func testComponents() {
        let time = Time(2018, 2, 1, 12, 0, 0)
        
        XCTAssertEqual(2018, time.year)
        XCTAssertEqual(2, time.month)
        XCTAssertEqual(1, time.day)
    }
}
