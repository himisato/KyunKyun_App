//
//  TabBarController.swift
//  KyunKyun_App
//
//  Created by Himi Sato on 11/14/15.
//  Copyright © 2015 Himi Sato. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pink = UIColor(red: 254.0 / 255, green: 117.0 / 255, blue: 167.0 / 255, alpha: 1.0)
        let brown = UIColor(red: 102.0 / 255, green: 51.0 / 255, blue: 0, alpha: 1.0)

        let clock = makeOriginalImage("clock_mini")
        let highlightedclock = makeOriginalImage("clock_mini")
        let bell = makeOriginalImage("bell_mini")
        let highlightedbell = makeOriginalImage("bell_mini")
        let setting = makeOriginalImage("setting_mini")
        let highlightedsetting = makeOriginalImage("setting_mini")
    
        UITabBar.appearance().barTintColor = pink
        UITabBar.appearance().translucent = false
        self.navigationController!.navigationBar.barTintColor = pink
        UITabBar.appearance().tintColor = brown
        
        let firstViewController = self.viewControllers![0]
        let secondViewController = self.viewControllers![1]
        let thirdViewController = self.viewControllers![2]
        

        firstViewController.tabBarItem = UITabBarItem(title: "alerm", image: clock, selectedImage: clock)
        secondViewController.tabBarItem = UITabBarItem(title: "voice", image: bell, selectedImage: bell)
        thirdViewController.tabBarItem = UITabBarItem(title: "setting", image: setting, selectedImage: setting)
       
    }
    
    func makeOriginalImage(name: String) -> UIImage {
        let image = UIImage(named: name)!
        let originalImage = image.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        return originalImage
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
