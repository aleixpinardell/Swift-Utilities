# Examples

## `centerVertically`
```swift
let icon = UIImage(named: "icon")
let iconSize: CGFloat = 32.0
let attachmentSize = CGSizeMake(iconSize, iconSize)
let attachment = NSTextAttachment()
attachment.image = icon?.scaledTintedImage(size: attachmentSize, tintColor: UIColor.redColor())
attachment.bounds.size = attachmentSize
attachment.centerVertically(font: UIFont.boldSystemFontOfSize(15.0))
```
