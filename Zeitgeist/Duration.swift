import Foundation

public typealias Duration = DateComponents

public extension Int {
    public var second: Duration {
        return self.seconds
    }
    
    public var seconds: Duration {
        var duration = Duration()
        duration.second = self
        return duration
    }
    
    public var minute: Duration {
        return self.minutes
    }
    
    public var minutes: Duration {
        var duration = Duration()
        duration.minute = self
        return duration
    }

    public var hour: Duration {
        return self.hours
    }
    
    public var hours: Duration {
        var duration = Duration()
        duration.hour = self
        return duration
    }
}
