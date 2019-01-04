import XCTest
@testable import Zeitgeist

class PeriodTest: XCTestCase {
  func testLess() {
    let time = Time(2019, 1, 1, 7)
    let period1 = Period(starts: time, ends: time + 1.hour, allDay: true)
    let period2 = Period(starts: time + 2.hours, ends: time + 3.hours, allDay: true)
    
    XCTAssertTrue(period1 < period2)
  }
  
  func testLessWithEqualStarts() {
    let time = Time(2019, 1, 1, 7)
    let period1 = Period(starts: time, ends: time + 1.hour, allDay: true)
    let period2 = Period(starts: time, ends: time + 3.hours, allDay: true)

    XCTAssertTrue(period1 < period2)
  }
  
  func testDuration() {
    let starts = Time(2018, 12, 15, 8, 4, 2)
    let ends = Time(2018, 12, 15, 8, 5, 2)
    let subject = Period(starts: starts, ends: ends)

    let duration = subject.duration
    
    XCTAssertEqual(60.seconds, duration)
  }
}
