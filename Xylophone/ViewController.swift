//
//  ViewController.swift
//  Xylophone
//
//  Created by Anusha on 09/11/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    
    var sound: [String] = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
    }

    @IBAction func onPressed(_ sender: UIButton) {
        
        var soundSelected = sound[(sender.tag)-1]
        playSound(sound : soundSelected)
    }
    
    func playSound(sound : String){
        
        var soundURL = Bundle.main.url(forResource: sound, withExtension: ".wav")
        
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        catch{
            print(error)
        }
        
    }
    
}

