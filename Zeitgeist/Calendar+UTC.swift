import Foundation

public extension Calendar {
  static var utc: Calendar {
    var calendar = Calendar.current
    calendar.timeZone = TimeZone.utc
    return calendar
  }
}

extension TimeZone {
  static var utc: TimeZone {
    return TimeZone(secondsFromGMT: 0)!
  }
}
