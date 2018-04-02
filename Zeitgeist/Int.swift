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
public extension Int {
    func roundedUp(to roundTo: Int) -> Int {
        let remainder = self % roundTo
        if (remainder == 0) {
            return self
        }
        return self + roundTo - remainder
    }

    func roundedDown(to roundTo: Int) -> Int {
        let remainder = self % roundTo
        return self - remainder
    }
}
