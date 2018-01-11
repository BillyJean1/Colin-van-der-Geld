//
//  ViewController.swift
//  NoticeMe
//
//  Created by Colin van der Geld on 08-01-18.
//  Copyright © 2018 Colin van der Geld. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController {
    var count = 0
    
    
    // create a sound ID, in this case its the tweet sound.
    let soundId: SystemSoundID = 1023
    
    @IBAction func noticeOnce(_ sender: UIButton) {
        playSomeSound(path: "/System/Library/Audio/UISounds/Tock.caf", loops:1)
       
    }
    
    
    func playSound(){
        AudioServicesAddSystemSoundCompletion(soundId, nil, nil, { (soundId, clientData) -> Void in
            AudioServicesDisposeSystemSoundID(soundId)
        }, nil)
        
        AudioServicesPlaySystemSound(soundId)
    }
    
    
    @IBAction func noticeThrice(_ sender: UIButton) {
        playSomeSound(path: "/System/Library/Audio/UISounds/Tock.caf", loops:3)
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playSomeSound(path: String, loops:Int) {
        
        let url = URL(fileURLWithPath: path)
        
        do{
            let dj = try AVAudioPlayer(contentsOf: url)
            dj.prepareToPlay()
            dj.numberOfLoops = loops
            dj.play()
        }
        catch{
            print("error!")
        }
    }
    
    

    
}
