import Foundation

public class UTCTime: Time {
    public required init(at date: Date = Travel.now) {
        super.init(at: date, calendar: Calendar.utc)
    }
}
