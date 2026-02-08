func divide(_ a: Int, _ b: Int) -> Double? {
    guard b != 0 else { return nil }
    return Double(a) / Double(b)
}
