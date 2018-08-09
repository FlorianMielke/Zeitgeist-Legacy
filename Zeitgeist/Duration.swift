import Foundation

public typealias Duration = DateComponents

public extension Duration {
    public func ago(time: Time = Time.current) -> Time {
        let date = Calendar.current.date(byAdding: self.inverted(), to: time.date)!
        return Time(date: date)
    }
    
    func inverted() -> Duration {
        var inverted = Duration()
        if let nanosecond = nanosecond {
            inverted.nanosecond = nanosecond * (-1)
        }
        if let second = second {
            inverted.second = second * (-1)
        }
        if let minute = minute {
            inverted.minute = minute * (-1)
        }
        if let hour = hour {
            inverted.hour = hour * (-1)
        }
        if let day = day {
            inverted.day = day * (-1)
        }
        if let month = month {
            inverted.month = month * (-1)
        }
        if let year = year {
            inverted.year = year * (-1)
        }
        return inverted
    }
}
