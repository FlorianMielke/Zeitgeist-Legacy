import XCTest
@testable import Zeitgeist

class Int_Duration: XCTestCase {
  func testMinutes() {
    XCTAssertEqual(0.seconds, 0.minutes)
    XCTAssertEqual(60.seconds, 1.minute)
    XCTAssertEqual(6720.seconds, 112.minutes)
    XCTAssertEqual((-480).seconds, (-8).minutes)
  }
  
  func testHours() {
    XCTAssertEqual(0.seconds, 0.hours)
    XCTAssertEqual(3600.seconds, 1.hour)
    XCTAssertEqual(147600.seconds, 41.hours)
    XCTAssertEqual((-838800).seconds, (-233).hours)
  }
}
