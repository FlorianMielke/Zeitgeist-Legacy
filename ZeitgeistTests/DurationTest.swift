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
}
