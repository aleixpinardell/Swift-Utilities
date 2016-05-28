extension AVAudioPlayer {
    /**
     Plays a sound called `fileName.fileExtension` from the main bundle on an instance of `AVAudioPlayer` declared at a global scope.
     
     - parameters:
        - fileName: the name of the file to be played.
        - fileExtension: the extension of the file to be played. The default value is `nil`. When this parameter is `nil`, files with extensions `aif`, `wav`, `mp4` and `mp3` are looked for in that order.
     
     - note: If the file `filleName.fileExtension` does not exist, this method does nothing and does not provide any warnings or errors.
     If the file does exist but the audio player cannot play it, a message is logged.
     */
    func playFileNamed(fileName: String, withExtenstion fileExtension: String? = nil) {
        let bundle = NSBundle.mainBundle()
        if let path = bundle.pathForResource(fileName, ofType: fileExtension) ??
                      bundle.pathForResource(fileName, ofType: "aif") ??
                      bundle.pathForResource(fileName, ofType: "wav") ??
                      bundle.pathForResource(fileName, ofType: "m4a") ??
                      bundle.pathForResource(fileName, ofType: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path))
                audioPlayer.prepareToPlay()
                //audioPlayer.volume = 0.05
                audioPlayer.play()
            } catch {
                print("Error playing audio file: \(fileName).\(fileExtension)")
            }
        }
    }
}
