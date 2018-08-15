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

    public func ago(time: Time = Time.current, calendar: Calendar = Calendar.current) -> Time {
        let date = calendar.date(byAdding: self.inverted.components, to: time.date)!
        return Time(at: date)
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
