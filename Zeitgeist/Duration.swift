import Foundation

public struct Duration: Equatable, Hashable {
  public var second: Int = 0
  public var minute: Int = 0
  public var hour: Int = 0
  public var day: Int = 0
  public var month: Int = 0
  public var year: Int = 0
  
  public var components: DateComponents {
    var components = DateComponents()
    components.second = second
    components.minute = minute
    components.hour = hour
    components.day = day
    components.month = month
    components.year = year
    return components
  }
  
  public var inverted: Duration {
    var inverted = Duration()
    inverted.second = second.inverted()
    inverted.minute = minute.inverted()
    inverted.hour = hour.inverted()
    inverted.day = day.inverted()
    inverted.month = month.inverted()
    inverted.year = year.inverted()
    return inverted
  }
  
  public init(second: Int = 0, minute: Int = 0, hour: Int = 0, day: Int = 0, month: Int = 0, year: Int = 0) {
    self.second = second
    self.minute = minute
    self.hour = hour
    self.day = day
    self.month = month
    self.year = year
  }
  
  public init?(components: DateComponents) {
    guard let second = components.second, let minute = components.minute, let hour = components.hour, let day = components.day, let month = components.month, let year = components.year else {
      return nil
    }
    self.init(second: second, minute: minute, hour: hour, day: day, month: month, year: year)
  }
  
  public func ago(time: Time = Time.current, calendar: Calendar = Calendar.current) -> Time {
    let date = calendar.date(byAdding: self.inverted.components, to: time.date)!
    return Time(at: date)
  }
  
  public static func +(lhs: Duration, rhs: Duration) -> Duration {
    return Duration(second: lhs.second + rhs.second, minute: lhs.minute + rhs.minute, hour: lhs.hour + rhs.hour, day: lhs.day + rhs.day, month: lhs.month + rhs.month, year: lhs.year + rhs.year)
  }

  public static func -(lhs: Duration, rhs: Duration) -> Duration {
    return Duration(second: lhs.second - rhs.second, minute: lhs.minute - rhs.minute, hour: lhs.hour - rhs.hour, day: lhs.day - rhs.day, month: lhs.month - rhs.month, year: lhs.year - rhs.year)
  }
}

extension Duration: Comparable {
  public static func <(lhs: Duration, rhs: Duration) -> Bool {
    if lhs.year < rhs.year {
      return true
    } else if (lhs.year == rhs.year && lhs.month < rhs.month) {
      return true
    } else if (lhs.month == rhs.month && lhs.day < rhs.day) {
      return true
    } else if (lhs.day == rhs.day && lhs.hour < rhs.hour) {
      return true
    } else if (lhs.hour == rhs.hour && lhs.minute < rhs.minute) {
      return true
    } else if (lhs.minute == rhs.minute && lhs.second < rhs.second) {
      return true
    }
    return false
  }
}
