extension Int {
    /**
     Returns a random `Int` in the range [`smallest`, `largest`].
     
     - parameters:
     - smallest: The lower limit for the value of the random `Int`. The default value is `Int.min`.
     - largest: The upper limit for the value of the random `Int`. The default value is `Int.max`.
     
     - important: Negative values for any of the parameters are clipped to `0`.
     */
    static func random(smallest: Int = Int.min, _ largest: Int = Int.max) -> Int {
        return Int(arc4random_uniform(UInt32(Swift.max(largest - smallest + 1, 0)))) + smallest
    }
    
    /**
     Returns an `Array` containing `Int`'s in the range [`smallest`, `largest`].
     
     - parameters:
     - smallest: The lower limit for the value of the random `Int`'s.
     - largest: The upper limit for the value of the random `Int`'s.
     - count: The number of elements of the returned `Array`.
     - allowRepetition: Determines whether the same value can appeat several times in the returned `Array`. Default is `false`.
     
     - important: `count` cannot be larger than `largest - smallest + 1` if `allowRepetition` is `false`.
     - important: Negative values for `smallest` or `largest` are clipped to `0`.
     
     - note: If `count <= 0`, an empty `Array` is returned.
     */
    static func random(smallest: Int, _ largest: Int, count: Int, allowRepetition: Bool = false) -> [Int] {
        var array: [Int] = []
        let range = Swift.max(largest - smallest + 1, 0)
        while array.count < count {
            let r = Int.random(smallest, largest)
            if allowRepetition || range < count || !array.contains(r) {
                array.append(r)
            }
        }
        return array
    }
}
