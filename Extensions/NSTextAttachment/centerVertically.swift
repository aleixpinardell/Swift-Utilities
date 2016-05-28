extension NSTextAttachment {
    /**
     Centers `self.image` vertically based on a provided `font`.
   
     - parameters:
        - font: The font used to determine the vertical origin of the `self.image`.
   
     - note: If `self.image` is not set, this method does nothing.
    */
    func centerVertically(font font: UIFont) {
        if let image = self.image {
            let mid = font.descender + font.capHeight
            self.bounds.origin.y = round(font.descender - image.size.height/2 + mid + 3)
        }
    }
}
