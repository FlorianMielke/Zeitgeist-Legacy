import Foundation

public struct Period: Equatable, Hashable, Comparable {
  public static let current = Period(starts: Time(), ends: Time(), allDay: false)
  public let starts: Time
  public let ends: Time
  public let allDay: Bool
  
  public var duration: Duration {
    let comp: Set<Calendar.Component> = [.second]
    guard let second = Calendar.current.dateComponents(comp, from: starts.date, to: ends.date).second else {
      return 0.seconds
    }
    return Duration(second)
  }
  
  public init(starts: Time, ends: Time, allDay: Bool) {
    self.starts = starts
    self.ends = ends
    self.allDay = allDay
  }
  
  public init(starts: Time, ends: Time) {
    self.init(starts: starts, ends: ends, allDay: false)
  }
  
  public static func <(lhs: Period, rhs: Period) -> Bool {
    return lhs.starts < rhs.starts && lhs.ends < rhs.ends
  }
}
