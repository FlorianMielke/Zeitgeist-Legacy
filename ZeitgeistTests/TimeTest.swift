import XCTest
@testable import Zeitgeist

class TimeTest: XCTestCase {
    func testComponents() {
        let time = Time(year: 2018, month: 2, day: 1, hour: 12, minute: 0, second: 0)
        
        XCTAssertEqual(2018, time.year)
        XCTAssertEqual(2, time.month)
    }
}
