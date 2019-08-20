import XCTest
@testable import Zeitgeist

class TravelTest : XCTestCase {
  let calendar = Calendar.current
  var tomorrow: Date!
  
  override func setUp() {
    var oneDay = DateComponents()
    oneDay.day = 1
    tomorrow = calendar.date(byAdding: oneDay, to: Date())!
  }
  
  func testItTravelsToTomorrow() {
    Travel.travel(to: tomorrow)
    
    XCTAssertEqual(tomorrow, Time.current.date)
    XCTAssertEqual(tomorrow, Travel.now)
    XCTAssertTrue(Travel.isTraveled)
    
    Travel.travelBack()
    
    XCTAssertEqual(Date().timeIntervalSinceReferenceDate, Time.current.timeIntervalSinceReferenceDate, accuracy: 0.01)
    XCTAssertEqual(Date().timeIntervalSinceReferenceDate, Travel.now.timeIntervalSinceReferenceDate, accuracy:0.01)
    XCTAssertFalse(Travel.isTraveled)
  }
}

extension Time {
  public var timeIntervalSinceReferenceDate: TimeInterval {
    return date.timeIntervalSinceReferenceDate
  }
}
