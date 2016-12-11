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
    @IBOutlet var datePicker: UIDatePicker!{
        didSet{
//            datePicker.locale = Locale(identifier: "ja_JP")
        }
    }
    @IBOutlet var setButton: UIButton!
    var player: AVAudioPlayer!
    
    @IBAction func setButtonTapped(sender: AnyObject) {
            print(datePicker.date)
    }
    
    override func awakeFromNib() {
        //        let image = UIImage(named: "clock_mini")!
        
        //        let image = #imageLiteral(resourceName: "clock_mini")
        
        //        self.tabBarItem.image = image.withRenderingMode(.alwaysOriginal)
        
        self.tabBarItem.image = #imageLiteral(resourceName: "clock_mini").withRenderingMode(.alwaysOriginal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationController!.navigationBar.barTintColor = UIColor(red: 254.0 / 255, green: 117.0 / 255, blue: 167.0 / 255, alpha: 1.0)
        
        //self.navigationController!.navigationBar.tintColor = UIColor.black
        
        func getCurrentTime() -> String {
            let now = NSDate()
            let dateFormatter = DateFormatter()
            dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP") as Locale!
            dateFormatter.timeStyle = .short
            dateFormatter.dateStyle = .none
            let currentTime = dateFormatter.string(from: now as Date)
            return currentTime
        }

        func getNowClockString() -> String {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd' 'HH:mm:ss"
            let now = Date()
            return formatter.string(from: now)
        }
        
        
        /* 声の出し方
        let URL = Bundle.main.url(forResource: "a-2-2 toshishita", withExtension: "mp4")
        player = try! AVAudioPlayer(contentsOf: URL!)

        // Do any additional setup after loading the view.
        */
        
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

