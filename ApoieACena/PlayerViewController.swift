//
//  LocalViewController.swift
//  ApoieACena
//
//  Created by Felipe Montenegro on 3/31/17.
//  Copyright © 2017 Felipe Montenegro. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var time: UIProgressView?
    var player:AVAudioPlayer = AVAudioPlayer()
    weak var timerRunning: Timer?
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
        timerRunning?.invalidate()
        timerRunning = nil
    }
    
    @IBAction func play(_ sender: Any) {
        player.play()
        
        timerRunning = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (theTimer) in
            let timeprogress = Float(self.player.currentTime)
            self.time?.progress = timeprogress / Float(self.player.duration)
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        player.pause()
        player.currentTime = 0
        timerRunning?.invalidate()
        timerRunning = nil
    }
    
    
  //  var timeprogress : Float = 0.0
    
    func updateProgressBar() {
        let timeprogress = Float(self.player.currentTime)
        time?.progress = Float(self.player.duration) / timeprogress
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.time?.progress = 0.0
        do{
            let audioPath = Bundle.main.path(forResource: "Fim", ofType: "wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL )
        }
        catch{
            print("Music not found")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
