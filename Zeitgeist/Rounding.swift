protocol Roundable {
    func rounded(using rounding: Rounding) -> Self
}

public struct Rounding: Equatable, Hashable {
    public enum RoundingMethod: Equatable, Hashable {
        case none
        case up
        case down
    }

    public enum RoundingInterval: Int, Equatable, Hashable {
        case one = 1
        case two = 2
        case three = 3
        case four = 4
        case five = 5
        case six = 6
        case ten = 10
        case twelve = 12
        case fifteen = 15
        case twenty = 20
        case thirty = 30
    }
    
    public var interval = RoundingInterval.one
    public var method = RoundingMethod.none
    
    public init(to interval: RoundingInterval, method: RoundingMethod) {
        self.interval = interval
        self.method = method
    }
}
