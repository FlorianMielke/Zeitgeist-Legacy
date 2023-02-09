import Foundation

public extension TimeInterval {
  var ago: TimeInterval {
    guard self > 0 else { return self }
    return self * -1
  }
}
