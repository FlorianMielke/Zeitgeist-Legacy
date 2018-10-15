import XCTest
@testable import Zeitgeist

class RoundingTest: XCTestCase {
    func testItRoundsUpBy5Minutes() {
        let time = Time(2018, 1, 1, 8, 2, 0)
        let rounding = Rounding(to: .five, method: .up)
        
        let rounded = time.rounded(using: rounding)
        
        let expected = Time(2018, 1, 1, 8, 5, 0)
        XCTAssertEqual(expected, rounded)
    }

    func testItRoundsDownBy5Minutes() {
        let time = Time(2018, 1, 1, 8, 12, 0)
        let rounding = Rounding(to: .five, method: .down)
        
        let rounded = time.rounded(using: rounding)
        
        let expected = Time(2018, 1, 1, 8, 10, 0)
        XCTAssertEqual(expected, rounded)
    }

    func testItRoundsNoneBy15Minutes() {
        let time = Time(2018, 1, 1, 8, 22, 0)
        let rounding = Rounding(to: .fifteen, method: .none)
        
        let rounded = time.rounded(using: rounding)
        
        let expected = Time(2018, 1, 1, 8, 30, 0)
        XCTAssertEqual(expected, rounded)
    }
}
