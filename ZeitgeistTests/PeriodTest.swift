import XCTest
@testable import Zeitgeist

class PeriodTest: XCTestCase {
    func testEarlier() {
        let period1 = Period(starts: Time(), ends: Time(), allDay: true)
        let period2 = Period(starts: Time(), ends: Time(), allDay: true)
        
        XCTAssertTrue(period1 < period2)
    }

    func testLater() {
        let period1 = Period(starts: Time(), ends: Time(), allDay: true)
        let period2 = Period(starts: Time(), ends: Time(), allDay: true)
        
        XCTAssertTrue(period2 > period1)
    }
}
