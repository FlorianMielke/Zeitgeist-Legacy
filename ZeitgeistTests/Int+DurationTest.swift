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
    XCTAssertEqual(Duration(0), 0.minutes)
    XCTAssertEqual(Duration(60), 1.minute)
    XCTAssertEqual(Duration(6720), 112.minutes)
    XCTAssertEqual(Duration(-480), (-8).minutes)
  }
  
  func testHours() {
    XCTAssertEqual(Duration(0), 0.hours)
    XCTAssertEqual(Duration(3600), 1.hour)
    XCTAssertEqual(Duration(147600), 41.hours)
    XCTAssertEqual(Duration(-838800), (-233).hours)
  }
  
  func testDays() {
    XCTAssertEqual(Duration(0), 0.days)
    XCTAssertEqual(Duration(86400), 1.day)
    XCTAssertEqual(Duration(30412800), 352.days)
    XCTAssertEqual(Duration(-20131200), (-233).days)
  }
}
