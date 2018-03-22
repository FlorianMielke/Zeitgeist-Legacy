import Foundation

extension Date {
    public static func referenceDate(_ timeInterval: TimeInterval = 0) -> Date {
        return Date(timeIntervalSinceReferenceDate: timeInterval)
    }
}
