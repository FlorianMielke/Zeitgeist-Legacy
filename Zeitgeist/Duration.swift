import Foundation

public typealias Duration = TimeInterval

public extension Duration {
    public var second: Duration {
        get {
            return self.seconds
        }
    }
    
    public var seconds: Duration {
        get {
            return self
        }
    }
    
    public var minute: Duration {
        get {
            return self.minutes
        }
    }
    
    public var minutes: Duration {
        get {
            return self * 60
        }
    }

    public var hour: Duration {
        get {
            return self.hours
        }
    }
    
    public var hours: Duration {
        get {
            return self.minutes * 60
        }
    }
}
