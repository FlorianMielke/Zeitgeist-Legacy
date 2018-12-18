import XCTest
@testable import Zeitgeist

class DurationTest: XCTestCase {
  var subject = Duration()
  
  override func setUp() {
    super.setUp()
    subject = Duration()
  }
  
  override func tearDown() {
    Travel.travelBack()
    super.tearDown()
  }
  
  func testCurrentAgo() {
    let referenceDate = Date.init(timeIntervalSinceReferenceDate: 5)
    Travel.travel(to: referenceDate)
    
    let time = subject.ago()
    
    XCTAssertEqual(Time(at: referenceDate), time)
  }
  
  func test1DayAgo() {
    let referenceDate = Date.init(timeIntervalSinceReferenceDate: 5)
    Travel.travel(to: referenceDate)
    
    let time = 1.day.ago()
    
    let expected = Calendar.current.date(byAdding: .day, value: -1, to: referenceDate)!
    XCTAssertEqual(Time(at: expected), time)
  }
  
  func test2HoursAgo() {
    let referenceDate = Date.init(timeIntervalSinceReferenceDate: 5)
    Travel.travel(to: referenceDate)
    
    let time = 2.hours.ago()
    
    let expected = Calendar.current.date(byAdding: .hour, value: -2, to: referenceDate)!
    XCTAssertEqual(Time(at: expected), time)
  }
  
  func testComparabale() {
    XCTAssertTrue(Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2017) < Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2018))
    XCTAssertTrue(Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2017) < Duration(second: 0, minute: 0, hour: 0, day: 0, month: 1, year: 2017))
    XCTAssertTrue(Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2017) < Duration(second: 0, minute: 0, hour: 0, day: 1, month: 0, year: 2017))
    XCTAssertTrue(Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2017) < Duration(second: 0, minute: 0, hour: 1, day: 0, month: 0, year: 2017))
    XCTAssertTrue(Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2017) < Duration(second: 0, minute: 1, hour: 0, day: 0, month: 0, year: 2017))
    XCTAssertTrue(Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2017) < Duration(second: 1, minute: 0, hour: 0, day: 0, month: 0, year: 2017))
    XCTAssertFalse(Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2017) > Duration(second: 0, minute: 0, hour: 0, day: 0, month: 0, year: 2018))
  }
  
  func testAddition() {
    XCTAssertEqual(Duration(second: 0, minute: 4), Duration(second: 0, minute: 1) + Duration(second: 0, minute: 3))
    XCTAssertEqual(Duration(second: 0, minute: -7), Duration(second: 0, minute: -3) + Duration(second: 0, minute: -4))
    XCTAssertEqual(Duration(second: 0, minute: -3), Duration(second: 0, minute: 0) + Duration(second: 0, minute: -3))
  }

  func testSubstraction() {
    XCTAssertEqual(Duration(second: 0, minute: -2), Duration(second: 0, minute: 1) - Duration(second: 0, minute: 3))
    XCTAssertEqual(Duration(second: 1, minute: 1), Duration(second: 1, minute: -3) - Duration(second: 0, minute: -4))
    XCTAssertEqual(Duration(second: 1, minute: 12, hour: 5), Duration(second: 3, minute: 14, hour: 6) - Duration(second: 2, minute: 2, hour: 1))
  }
}
