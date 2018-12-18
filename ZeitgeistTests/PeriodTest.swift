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
  
  func testDuration() {
    let starts = Time(2018, 12, 15, 8, 4, 2)
    let ends = Time(2018, 12, 15, 8, 5, 2)
    let subject = Period(starts: starts, ends: ends)

    let duration = subject.duration
    
    XCTAssertEqual(Duration(second: 0, minute: 1), duration)
  }
}
