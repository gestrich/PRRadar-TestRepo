// Calculator provides basic arithmetic operations
//
//
//
//
//

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }

    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }

    func divide(_ a: Int, _ b: Int) -> Double? {
        guard b != 0 else { return nil }
        return Double(a) / Double(b)
    }

    func modulo(_ a: Int, _ b: Int) -> Int? {
        guard b != 0 else { return nil }
        return a / b * b == a ? 0 : a - (a / b) * b
    }
}
