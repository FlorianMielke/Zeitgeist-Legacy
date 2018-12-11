import Foundation

public struct UTCTime: Equatable, Hashable {
  public let time: Time
  
  public init(at date: Date = Travel.now) {
    time = Time(at: date, calendar: Calendar.utc)
  }
}
