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
    let calendar: Calendar
    public let date: Date

    public var timeZone: TimeZone {
        return calendar.timeZone
    }

    public var timeIntervalSinceReferenceDate: TimeInterval {
        return date.timeIntervalSinceReferenceDate
    }

    public static var current: Time {
        return Time()
    }

    public static func current(calendar: Calendar) -> Time {
        return Time(calendar: calendar)
    }

    public static func currentTime(at date: Time, calendar: Calendar = Calendar.current) -> Time {
        let current = Time.current(calendar: calendar)
        return Time(date.year, date.month, date.day, current.hour, current.minute, current.second, calendar: calendar)
    }

    public init(at date: Date = Travel.now, calendar: Calendar = Calendar.current) {
        self.date = date
        self.calendar = calendar
    }

    public init(calendar: Calendar) {
        self.init(at: Travel.now, calendar: calendar)
    }

    public init(_ year: Int, _ month: Int, _ day: Int, _ hour: Int = 0, _ minute: Int = 0, _ second: Int = 0, calendar: Calendar = Calendar.current) {
        let component = DateComponents(year: year, month: month, day: day, hour: hour, minute: minute, second: second)
        let date = calendar.date(from: component)!
        self.init(at: date, calendar: calendar)
    }
}

// MARK: UTC

public extension Time {
    public static func utc(at date: Date) -> Time {
        return Time(at: date, calendar: Calendar.utc)
    }
}

// MARK: Comparison

public extension Time {
    public func isOnSameDay(_ other: Time) -> Bool {
        return calendar.isDate(self.date, inSameDayAs: other.date)
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

public extension Time {
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

// MARK: Rounding

extension Time: Roundable {
    public func rounded(by rounding: Rounding) -> Time {
        let interval = rounding.interval.rawValue
        switch rounding.method {
        case .none:
            return rounded(self, to: minute.rounded(to: interval))
        case .up:
            return rounded(self, to: minute.roundedUp(to: interval))
        case .down:
            return rounded(self, to: minute.roundedDown(to: interval))
        }
    }

    private func rounded(_: Time, to roundedMinutes: Int) -> Time {
        return Time(year, month, day, hour, roundedMinutes, 0)
    }
}

// MARK: Manipulation

extension Time {
    public func trimmed(to component: Calendar.Component) -> Time {
        switch component {
        case .second:
            return Time(year, month, day, hour, minute, 0, calendar: calendar)
        default:
            return self
        }
    }
}
