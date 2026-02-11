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

    func inverse(_ a: Int) -> Double? {
        guard a != 0 else { return nil }
        return 1.0 / Double(a)
    }
}
