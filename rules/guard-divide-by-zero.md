---
description: Division operations should return a Result type or throw rather than returning nil
category: safety
focus_type: method
applies_to:
  file_patterns:
    - "*.swift"
grep:
  any:
    - "divide"
    - "/ "
---

# Guard Against Unsafe Division

Division operations should use Swift's error handling (`throws`) or a `Result` type rather than returning an optional. Returning `nil` hides the error condition and forces callers to unwrap without context about what went wrong.

## Bad Example

```swift
func divide(_ a: Int, _ b: Int) -> Double? {
    guard b != 0 else { return nil }
    return Double(a) / Double(b)
}
```

## Good Example

```swift
enum MathError: Error {
    case divisionByZero
}

func divide(_ a: Int, _ b: Int) throws -> Double {
    guard b != 0 else { throw MathError.divisionByZero }
    return Double(a) / Double(b)
}
```

## What to Check

1. Does the function return an optional solely to represent an error?
2. Could the caller benefit from knowing *why* the operation failed?
3. Is there a domain-specific error type that should be used instead?
