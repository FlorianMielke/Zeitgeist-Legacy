import Foundation

// MARK: Enumerating

public extension Int {
    func times(_ f: () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }
    
    func times(_ f: @autoclosure () -> ()) {
        if self > 0 {
            for _ in 0..<self {
                f()
            }
        }
    }
}

// MARK: Rounding

public enum RoundingMethod {
    case none
    case up
    case down
}

public extension Int {
    func rounded(to roundTo: Int, rounding: RoundingMethod) -> Int {
        switch rounding {
        case .none:
            return rounded(to: roundTo)
        case .up:
            return roundedUp(to: roundTo)
        case .down:
            return roundedDown(to: roundTo)
        }
    }
    
    func rounded(to roundTo: Int) -> Int {
        guard roundTo > 0 else {
            return self
        }
        let remainder = self % roundTo
        let roundUpThreshold = roundTo / 2
        if (remainder < roundUpThreshold) {
            return roundedDown(to: roundTo)
        } else {
            return roundedUp(to: roundTo)
        }
    }
    
    func roundedUp(to roundTo: Int) -> Int {
        guard roundTo > 0 else {
            return self
        }
        let remainder = self % roundTo
        if (remainder == 0) {
            return self
        }
        return self + roundTo - remainder
    }

    func roundedDown(to roundTo: Int) -> Int {
        guard roundTo > 0 else {
            return self
        }
        let remainder = self % roundTo
        return self - remainder
    }
}

// MARK: Calculating

public extension Int {
    func inverted() -> Int {
        return self * (-1)
    }
}
