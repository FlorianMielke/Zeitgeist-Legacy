import Foundation

public struct Period: Equatable, Hashable, Comparable {
  public static let current = Period(starts: Time(), ends: Time(), allDay: false)
  public let starts: Time
  public let ends: Time
  public let allDay: Bool
  
  public var duration: Duration {
    let comp: Set<Calendar.Component> = [.year, .month, .day, .hour, .minute, .second]
    let components = Calendar.current.dateComponents(comp, from: starts.date, to: ends.date)
    guard let result = Duration(components: components) else {
      return Duration()
    }
    return result
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
