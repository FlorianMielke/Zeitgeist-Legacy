import Foundation

public struct Period: Equatable, Hashable, Comparable {
    public let starts: Time
    public let ends: Time
    public let allDay: Bool
    
    public static func <(lhs: Period, rhs: Period) -> Bool {
        return lhs.starts < rhs.starts && lhs.ends < rhs.ends
    }
}
