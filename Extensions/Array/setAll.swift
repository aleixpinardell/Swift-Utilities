extension Array {
    /**
     Sets all elements of `self` to `value`.
     
     - parameters:
        - value: the new value for all the elements of the array.
     */
    mutating func setAll(value: Element) {
        for i in self.indices {
            self[i] = value
        }
    }
}
