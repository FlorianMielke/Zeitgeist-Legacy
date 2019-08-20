import XCTest
@testable import Zeitgeist

class Time_ManipuliationTest : XCTestCase {
  func testTrim() {
    XCTAssertEqual(Time(2018, 7, 14, 15, 8, 0), Time(2018, 7, 14, 15, 8, 3).trimmed(to: .second))
    XCTAssertEqual(Time(2018, 7, 14), Time(2018, 7, 14, 15, 8, 3).trimmed(to: .day))
  }
  
  func testEnds() {
    XCTAssertEqual(Time(2018, 5, 3, 23, 59, 59), Time(2018, 5, 3, 12).ends)
  }
}
