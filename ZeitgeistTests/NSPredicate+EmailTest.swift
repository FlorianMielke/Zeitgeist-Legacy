import XCTest
@testable import Zeitgeist

class NSPredicate_EmailTest: XCTestCase {
  func testItEvaluatesEmailAddresses() {
    let subject = NSPredicate.email
    XCTAssertTrue(subject.evaluate(with: "bob@example.com"))
  }
}
