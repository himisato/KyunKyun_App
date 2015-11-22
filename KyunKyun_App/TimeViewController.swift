//
//  TimeViewController.swift
//  KyunKyun_App
//
//  Created by Himi Sato on 11/15/15.
//  Copyright © 2015 Himi Sato. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController {
    @IBOutlet weak var timeSetting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeSetting.text = getCurrentTime()
        
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 254.0 / 255, green: 117.0 / 255, blue: 167.0 / 255, alpha: 1.0)
        
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
    }
    
    func getCurrentTime() -> String {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.timeStyle = .ShortStyle
        dateFormatter.dateStyle = .NoStyle
        let currentTime = dateFormatter.stringFromDate(now)
        return currentTime
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
