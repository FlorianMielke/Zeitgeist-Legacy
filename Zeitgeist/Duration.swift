import Foundation

public typealias Duration = TimeInterval

public extension Duration {
    public var second: Duration {
        return self.seconds
    }
    
    public var seconds: Duration {
        return self
    }
    
    public var minute: Duration {
        return self.minutes
    }
    
    public var minutes: Duration {
        return self * 60
    }

    public var hour: Duration {
        return self.hours
    }
    
    public var hours: Duration {
        return self.minutes * 60
    }
}
