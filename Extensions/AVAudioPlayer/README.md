# Examples

## `playFileNamed`
```swift
var audioPlayer = AVAudioPlayer()

extension UIViewController {
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        audioPlayer.playFileNamed("correct")
    }
}
```
