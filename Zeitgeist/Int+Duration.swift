public extension Int {
  public var seconds: Duration {
    return Duration(Duration.ToSeconds.second.rawValue * self)
  }
  
  public var second: Duration {
    return self.seconds
  }
  
  public var minutes: Duration {
    return Duration(Duration.ToSeconds.minute.rawValue * self)
  }
  
  public var minute: Duration {
    return self.minutes
  }
  
  public var hours: Duration {
    return Duration(Duration.ToSeconds.hour.rawValue * self)
  }
  
  public var hour: Duration {
    return self.hours
  }
  
  public var days: Duration {
    return Duration(Duration.ToSeconds.day.rawValue * self)
  }
  
  public var day: Duration {
    return self.days
  }
}
