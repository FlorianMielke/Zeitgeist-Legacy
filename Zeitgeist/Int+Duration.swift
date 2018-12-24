public extension Int {
  public var seconds: Duration {
    return Duration(Duration.Defaults.second.rawValue * self)
  }
  
  public var second: Duration {
    return self.seconds
  }
  
  public var minutes: Duration {
    return Duration(Duration.Defaults.minute.rawValue * self)
  }
  
  public var minute: Duration {
    return self.minutes
  }
  
  public var hours: Duration {
    return Duration(Duration.Defaults.hour.rawValue * self)
  }
  
  public var hour: Duration {
    return self.hours
  }
  
  public var days: Duration {
    return Duration(Duration.Defaults.day.rawValue * self)
  }
  
  public var day: Duration {
    return self.days
  }
}
