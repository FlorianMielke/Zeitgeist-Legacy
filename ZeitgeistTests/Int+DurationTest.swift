import XCTest
@testable import Zeitgeist

class Int_Duration: XCTestCase {
  var expected = Duration()
  
  override func setUp() {
    super.setUp()
    expected = Duration()
  }
  
  func testSeconds() {
    expected.second = 0
    XCTAssertEqual(expected, 0.seconds)
    expected.second = 1
    XCTAssertEqual(expected, 1.second)
    expected.second = 5232
    XCTAssertEqual(expected, 5232.seconds)
    expected.second = -332
    XCTAssertEqual(expected, (-332).seconds)
  }
  
  func testMinutes() {
    expected.minute = 0
    XCTAssertEqual(expected, 0.minutes)
    expected.minute = 1
    XCTAssertEqual(expected, 1.minute)
    expected.minute = 112
    XCTAssertEqual(expected, 112.minutes)
    expected.minute = -8
    XCTAssertEqual(expected, (-8).minutes)
  }
  
  func testHours() {
    expected.hour = 0
    XCTAssertEqual(expected, 0.hours)
    expected.hour = 1
    XCTAssertEqual(expected, 1.hour)
    expected.hour = 41
    XCTAssertEqual(expected, 41.hours)
    expected.hour = -233
    XCTAssertEqual(expected, (-233).hours)
  }
  
  func testDays() {
    expected.day = 0
    XCTAssertEqual(expected, 0.days)
    expected.day = 1
    XCTAssertEqual(expected, 1.day)
    expected.day = 352
    XCTAssertEqual(expected, 352.days)
    expected.day = -233
    XCTAssertEqual(expected, (-233).days)
  }
}
