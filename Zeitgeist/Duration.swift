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
        inverted.second = second * (-1)
        inverted.minute = minute * (-1)
        inverted.hour = hour * (-1)
        inverted.day = day * (-1)
        inverted.month = month * (-1)
        inverted.year = year * (-1)
        return inverted
    }

    public func ago(time: Time = Time.current, calendar: Calendar = Calendar.current) -> Time {
        let date = calendar.date(byAdding: self.inverted.components, to: time.date)!
        return Time(at: date)
    }
}
