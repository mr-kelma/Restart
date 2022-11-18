//
//  AudioPlayer.swift
//  Restart
//
//  Created by Valery Keplin on 17.11.22.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
        print(sound)
    } catch {
      print("Could not play the sound file.")
    }
  }
}
