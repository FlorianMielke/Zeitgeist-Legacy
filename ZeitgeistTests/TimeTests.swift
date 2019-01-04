import XCTest
@testable import Zeitgeist

class TimeTests: XCTestCase {  
  func testDurationToOtherTime() {
    let subject = Time(2018, 1, 1, 1, 1, 0)
    let other = Time(2018, 1, 1, 1, 5, 0)
    
    let seconds = subject.duration(to: other)
    
    XCTAssertEqual(240.seconds, seconds)
  }
  
  func testAddition() {
    let subject = Time(2018, 1, 1, 1)
    XCTAssertEqual(Time(2018, 1, 1, 1, 5), subject + 5.minutes)
    XCTAssertEqual(Time(2018, 1, 1, 1), subject + 0.minutes)
  }
}
