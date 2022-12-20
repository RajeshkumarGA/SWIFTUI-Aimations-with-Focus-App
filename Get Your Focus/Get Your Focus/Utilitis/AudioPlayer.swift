//
//  AudioPlayer.swift
//  Get Your Focus
//
//  Created by Admin on 19/12/22.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func playAudio(sound : String , type : String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("oop's Audio Error")
        }
    }
}
