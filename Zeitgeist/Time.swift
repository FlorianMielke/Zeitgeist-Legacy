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
    let timeZone: TimeZone
    
    public static var current: Time {
        get {
            return Time()
        }
    }
    
    public var year: Int {
        get {
            return component(.year)
        }
    }
    
    public var month: Int {
        get {
            return component(.month)
        }
    }
    
    init(date: Date = Date(), calendar: Calendar = Calendar.current, timeZone: TimeZone = TimeZone.current) {
        self.date = date
        self.calendar = calendar
        self.timeZone = timeZone
    }
    
    init(year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int) {
        self.calendar = Calendar.current
        self.timeZone = TimeZone.current
        let component = DateComponents(year: year, month: month, day: day, hour: hour, minute: minute, second: second)
        self.date = calendar.date(from: component)!
    }
    
    func component(_ component: Calendar.Component) -> Int {
        return calendar.component(component, from: date)
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
