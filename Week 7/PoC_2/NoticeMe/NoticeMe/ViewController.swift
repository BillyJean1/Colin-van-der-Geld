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

class ViewController: UIViewController{
    var count = 0
    
    var player: AVAudioPlayer?

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
    @IBAction func customSound(_ sender: UIButton) {
        let url = URL.init(fileURLWithPath: Bundle.main.path(forResource: "baseball", ofType: "mp3")!)
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func pause(_ sender: UIButton) {
        if let soundPlayer = player{
            if (soundPlayer.isPlaying){
                soundPlayer.pause()
            }
            else{
                soundPlayer.play()
            }
        }
     
    }
    @IBAction func flash(_ sender: UIButton) {
        if let device = AVCaptureDevice.default(for: AVMediaType.video){
            if (device.hasTorch) {
            do {
                try device.lockForConfiguration()
                if (device.torchMode == AVCaptureDevice.TorchMode.on) {
                    device.torchMode = AVCaptureDevice.TorchMode.off
                } else {
                    do {
                        try device.setTorchModeOn(level: 1.0)
                    } catch {
                        print(error)
                    }
                }
                device.unlockForConfiguration()
            } catch {
                print(error)
            }
        }
    }
    }
    
    @IBAction func vibrate(_ sender: UIButton) {
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))   
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
