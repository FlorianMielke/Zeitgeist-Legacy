import XCTest
@testable import Zeitgeist

class TimeTrimTests: XCTestCase {
  func testTrim() {
    XCTAssertEqual(Time(2018, 7, 14, 15, 8, 0), Time(2018, 7, 14, 15, 8, 3).trimmed(to: .second))
    XCTAssertEqual(Time(2018, 7, 14), Time(2018, 7, 14, 15, 8, 3).trimmed(to: .day))
  }
}
