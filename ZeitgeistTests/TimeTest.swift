import XCTest
@testable import Zeitgeist

class TimeTest: XCTestCase {
    func testComponents() {
        let time = Time(2018, 2, 1, 12, 4, 15)
        
        XCTAssertEqual(2018, time.year)
        XCTAssertEqual(2, time.month)
        XCTAssertEqual(1, time.day)
        XCTAssertEqual(12, time.hour)
        XCTAssertEqual(4, time.minute)
        XCTAssertEqual(15, time.second)
    }
    
    func testBefore() {
        XCTAssertTrue(Time(2018, 3, 10).isBefore(Time(2018, 3, 11)))
        XCTAssertFalse(Time(2018, 3, 10).isBefore(Time(2018, 3, 9)))
        XCTAssertFalse(Time(2018, 3, 10).isBefore(Time(2018, 3, 10)))
    }

    func testAfter() {
        XCTAssertTrue(Time(2018, 3, 10).isAfter(Time(2018, 3, 9)))
        XCTAssertFalse(Time(2018, 3, 10).isAfter(Time(2018, 3, 11)))
        XCTAssertFalse(Time(2018, 3, 10).isAfter(Time(2018, 3, 10)))
    }
}
