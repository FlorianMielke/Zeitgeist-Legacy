import Foundation

public struct Period: Equatable, Hashable, Comparable {
  public let starts: Time
  public let ends: Time
  public let allDay: Bool
  public static let current = Period(starts: Time(), ends: Time(), allDay: false)
  
  public init(starts: Time, ends: Time, allDay: Bool) {
    self.starts = starts
    self.ends = ends
    self.allDay = allDay
  }
  
  public static func <(lhs: Period, rhs: Period) -> Bool {
    return lhs.starts < rhs.starts && lhs.ends < rhs.ends
  }
}
