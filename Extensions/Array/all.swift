extension Array where Element: Equatable {
    /**
     Checks if all elements of `self` are equal to `value`.
     
     - parameters:
        - value: the value each of the elements of the array is checked against.
     */
    func all(value: Element) -> Bool {
        for element in self {
            if element != value {
                return false
            }
        }
        return true
    }
}
