import XCTest
@testable import Zeitgeist

class IntTest: XCTestCase {
    // MARK: Enumerating

    func testItCallsAClosure0Times() {
        var result = "a"
        
        0.times {
            result.append("b")
        }
        
        XCTAssertEqual("a", result)
    }
    
    func testItCallsAClosure1Time() {
        var result = "a"
        
        1.times {
            result.append("b")
        }
        
        XCTAssertEqual("ab", result)
    }

    func testItCallsAClosure5Times() {
        var result = "a"
        
        5.times {
            result.append("b")
        }
        
        XCTAssertEqual("abbbbb", result)
    }
    
    // MARK: Rounding
    
    func testItRoundsUp() {
        XCTAssertEqual(5, 5.roundedUp(to: 0))
        XCTAssertEqual(0, 0.roundedUp(to: 5))
        XCTAssertEqual(5, 1.roundedUp(to: 5))
        XCTAssertEqual(5, 5.roundedUp(to: 5))
        XCTAssertEqual(10, 6.roundedUp(to: 5))
        XCTAssertEqual(10, 8.roundedUp(to: 10))
        XCTAssertEqual(20, 14.roundedUp(to: 10))
    }
    
    func testItRoundsDown() {
        XCTAssertEqual(5, 5.roundedDown(to: 0))
        XCTAssertEqual(0, 0.roundedDown(to: 5))
        XCTAssertEqual(0, 1.roundedDown(to: 5))
        XCTAssertEqual(5, 5.roundedDown(to: 5))
        XCTAssertEqual(5, 8.roundedDown(to: 5))
        XCTAssertEqual(25, 28.roundedDown(to: 5))
        XCTAssertEqual(20, 20.roundedDown(to: 10))
    }
    
    func testItHalfRoundsUp() {
        XCTAssertEqual(5, 5.rounded(to: 5))
        XCTAssertEqual(0, 4.rounded(to: 10))
        XCTAssertEqual(10, 5.rounded(to: 10))
        XCTAssertEqual(10, 6.rounded(to: 10))
        XCTAssertEqual(10, 8.rounded(to: 5))
        XCTAssertEqual(150, 158.rounded(to: 50))
    }
    
    func testItHalfRoundsDown() {
        XCTAssertEqual(5, 4.rounded(to: 5))
        XCTAssertEqual(0, 4.rounded(to: 10))
        XCTAssertEqual(20, 24.rounded(to: 10))
    }
    
    // MARK: Calculating
    
    func testItInverts() {
        XCTAssertEqual(0, 0.inverted())
        XCTAssertEqual(-1, 1.inverted())
        XCTAssertEqual(1, -1.inverted())
    }
}
