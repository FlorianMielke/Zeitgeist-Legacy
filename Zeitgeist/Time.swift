import Foundation

public enum Weekday: Int {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

public class Time: Equatable, Hashable, Comparable {
    let date: Date
    let calendar: Calendar
    
    public static var current: Time {
        get {
            return Time()
        }
    }
    
    init(date: Date = Date(), calendar: Calendar = Calendar.current) {
        self.date = date
        self.calendar = calendar
    }
    
    public static func <(lhs: Time, rhs: Time) -> Bool {
        return lhs.date < rhs.date
    }

    public static func == (lhs: Time, rhs: Time) -> Bool {
        return lhs.date == rhs.date && lhs.calendar == rhs.calendar
    }
    
    public var hashValue: Int {
        return date.hashValue ^ calendar.hashValue &* 16777619
    }
}
