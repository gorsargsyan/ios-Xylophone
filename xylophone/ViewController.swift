//
//  ViewController.swift
//  xylophone
//
//  Created by Gor Sargsyan on 15.06.22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audio:AVPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(name: (sender.titleLabel?.text)!)
    }

    func playSound(name: String) {
        // need to declare local path as url
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        // now use declared path 'url' to initialize the player
        audio = AVPlayer.init(url: url!)
        // after initialization play audio its just like click on play button
        audio.play()
    }
}

