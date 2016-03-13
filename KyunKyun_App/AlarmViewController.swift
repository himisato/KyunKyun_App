//
//  AlarmViewController.swift
//  KyunKyun_App
//
//  Created by Himi Sato on 11/15/15.
//  Copyright © 2015 Himi Sato. All rights reserved.
//

import UIKit
import AVFoundation

class AlarmViewController: UIViewController {

    var player: AVAudioPlayer!
    
    @IBAction func ButtonTapped(sender: AnyObject) {
        if player.playing {
            player.stop()
        } else {
            player.currentTime = 0
            player.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let URL = NSBundle.mainBundle().URLForResource("a-2-2 toshishita", withExtension: "mp4")
        player = try! AVAudioPlayer(contentsOfURL: URL!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
