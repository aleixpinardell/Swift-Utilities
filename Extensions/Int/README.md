# Examples

## `random`
```swift
Int.random(10, 20)                                    // 20
Int.random(0, 99, count: 5)                           // [12, 20, 81, 21, 3]
Int.random(0, 9, count: 10)                           // [8, 5, 9, 4, 6, 1, 3, 2, 7, 0]
Int.random(0, 9, count: 10, allowRepetition: true)    // [2, 9, 4, 7, 5, 5, 9, 6, 1, 8]
```
