//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cButton(_ sender: UIButton) {
        
        //print(sender.titleLabel? .text as Any)
        playSound(whatToplay: sender.currentTitle!)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.3){
            sender.alpha = 1
        }
    }
    
    func playSound(whatToplay: String) {
        
        print("start")
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            print("end")
        }
        
        let url = Bundle.main.url(forResource: whatToplay, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


