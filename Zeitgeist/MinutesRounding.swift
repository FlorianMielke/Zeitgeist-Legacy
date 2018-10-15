public struct MinutesRounding: Equatable, Hashable {
    public enum MinutesInterval: Int {
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
    
    public var toMinutes = MinutesInterval.one
    public var method = RoundingMethod.none
}
