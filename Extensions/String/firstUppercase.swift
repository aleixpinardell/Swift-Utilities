extension String {
    /**
     Returns a copy of `self` with the first character capitalized.
    */
    var firstUppercase: String {
        var string = self
        if let firstCharacter = self.characters.first {
            string.replaceRange(self.startIndex.advancedBy(0)..<self.startIndex.advancedBy(1), with: String(firstCharacter).capitalizedString)
        }
        return string
    }
}
