//
//  SettingViewController.swift
//  KyunKyun_App
//
//  Created by Himi Sato on 11/15/15.
//  Copyright © 2015 Himi Sato. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    override func awakeFromNib() {
        self.tabBarItem.image = #imageLiteral(resourceName: "setting_mini").withRenderingMode(.alwaysOriginal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
