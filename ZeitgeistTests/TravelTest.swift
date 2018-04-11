import XCTest
@testable import Zeitgeist

class TravelTest: XCTestCase {
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
        
        XCTAssertNotEqual(tomorrow, Time.current.date)
        XCTAssertNotEqual(tomorrow, Travel.now)
        XCTAssertFalse(Travel.isTraveled)
    }
}
