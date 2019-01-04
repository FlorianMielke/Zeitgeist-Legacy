import Foundation

extension Calendar {
  public static var utc: Calendar {
    var calendar = Calendar.current
    calendar.timeZone = TimeZone.utc
    return calendar
  }
}

public extension TimeZone {
  public static var utc: TimeZone {
    return TimeZone(secondsFromGMT: 0)!
  }
}
