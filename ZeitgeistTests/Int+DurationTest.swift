import XCTest
@testable import Zeitgeist

class Int_Duration: XCTestCase {
  func testSeconds() {
    XCTAssertEqual(Duration(0), 0.seconds)
    XCTAssertEqual(Duration(1), 1.second)
    XCTAssertEqual(Duration(5232), 5232.seconds)
    XCTAssertEqual(Duration(-332), (-332).seconds)
  }
  
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
  
  func testDays() {
    XCTAssertEqual(0.seconds, 0.days)
    XCTAssertEqual(86400.seconds, 1.day)
    XCTAssertEqual(30412800.seconds, 352.days)
    XCTAssertEqual((-20131200).seconds, (-233).days)
  }
}
