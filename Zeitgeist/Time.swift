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

public struct Time: Equatable, Hashable, Comparable {
    let date: Date
    let calendar: Calendar
    let timeZone: TimeZone
    public static let current = Time()
    
    init(date: Date = Date(), timeZone: TimeZone = TimeZone.current) {
        self.date = date
        self.calendar = Calendar.current
        self.timeZone = timeZone
    }
    
    init(_ year: Int, _ month: Int, _ day: Int, _ hour: Int = 0, _ minute: Int = 0, _ second: Int = 0) {
        let component = DateComponents(year: year, month: month, day: day, hour: hour, minute: minute, second: second)
        let date = Calendar.current.date(from: component)!
        self.init(date: date)
    }
    
    public func isBefore(_ other: Time) -> Bool {
        return self < other
    }

    public func isAfter(_ other: Time) -> Bool {
        return self > other
    }

    public static func <(lhs: Time, rhs: Time) -> Bool {
        return lhs.date < rhs.date
    }
}

// MARK: Components
extension Time {
    public var year: Int {
        return component(.year)
    }
    
    public var month: Int {
        return component(.month)
    }
    
    public var day: Int {
        return component(.day)
    }

    public var hour: Int {
        return component(.hour)
    }

    public var minute: Int {
        return component(.minute)
    }

    public var second: Int {
        return component(.second)
    }

    func component(_ component: Calendar.Component) -> Int {
        return calendar.component(component, from: date)
    }
}
