extension CGFloat {
    /**
     Returns a random `CGFloat` in the range [`smallest`, `largest`].
    
     - parameters:
        - smallest: The lower limit for the value of the random `CGFloat`. The default value is `0.0`.
        - largest: The upper limit for the value of the random `CGFloat`. The default value is `1.0`.
        - precision: The lowest possible separation between the values of two randomly generated `CGFloat`. The default value is `1e-5`.
     
     - important: Negative values for any of the parameters are clipped to `0.0`.
     
     - note: `precision` should be smaller than `largest - smallest`. Otherwise, the same value will be always returned.
    */
    static func random(smallest: CGFloat = 0.0, _ largest: CGFloat = 1.0, precision: CGFloat = 1e-5) -> CGFloat {
        return CGFloat(Int.random(Int(smallest/precision), Int(largest/precision)))*precision
    }
}
