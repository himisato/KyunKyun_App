//
//  VoiceViewController.swift
//  KyunKyun_App
//
//  Created by Himi Sato on 11/15/15.
//  Copyright © 2015 Himi Sato. All rights reserved.
//

import UIKit

class VoiceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let voiceType = ["年下の彼", "執事系", "憧れの先輩", "理想の旦那様", "修造系", "関西イケメン"]
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
    super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voiceType.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = voiceType[indexPath.row]
        return cell
    }
    
    func tabelView(tabel: UITableView, didSelectRowAtInexpPath indexPath: NSIndexPath){
        print(voiceType[indexPath.row])
    }

  

}
