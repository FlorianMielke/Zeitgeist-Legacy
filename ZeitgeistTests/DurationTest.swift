import XCTest
@testable import Zeitgeist

class DurationTest: XCTestCase {
    func testSeconds() {
        XCTAssertEqual(0, 0.seconds)
        XCTAssertEqual(1, 1.second)
        XCTAssertEqual(10, 10.seconds)
        XCTAssertEqual(930, 930.seconds)
        XCTAssertEqual(-332, -332.seconds)
    }
    
    func testMinutes() {
        XCTAssertEqual(0, 0.minutes)
        XCTAssertEqual(60, 1.minute)
        XCTAssertEqual(480, 8.minutes)
        XCTAssertEqual(-480, -8.minutes)
    }
    
    func testHours() {
        XCTAssertEqual(0, 0.hours)
        XCTAssertEqual(3600, 1.hour)
        XCTAssertEqual(28800, 8.hours)
        XCTAssertEqual(-28800, -8.hours)
    }
}
