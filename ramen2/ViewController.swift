//
//  ViewController.swift
//  ramen
//
//  Created by 石橋　琉 on 2016/10/30.
//  Copyright © 2016年 石橋　琉. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var ramenNameArray = [String]()
    @IBOutlet var ramentableview: UITableView!
    var saveData : NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ramentableview.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //        ramenNameArray; [String] = saveData.arrayForKey("shopname")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        cell?.textLabel?.text = "テスト"
        
        return cell!
    }
}

