// Greeter.swift
// Provides simple greeting functionality for test validation purposes

class Greeter {
    func greet(_ name: String) -> String {
        return "Hello, \(name)!"
    }

    func greetWithTime(_ name: String, time: String) -> String {
        return "Good \(time), \(name)!"
    }
}
