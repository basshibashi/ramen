//
//  newramenController.swift
//  ramen
//
//  Created by 石橋　琉 on 2016/12/11.
//  Copyright © 2016年 石橋　琉. All rights reserved.
//

import UIKit

class newramenController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var ramenimageview: UIImageView!
    @IBOutlet var ramenshopname: UITextField!
    @IBOutlet var komentotext: UITextView!
    @IBOutlet var hyoukaslider: UISlider!
    @IBOutlet var ramenajipicker: UIPickerView!
//    var ramenNameArray = [String]()
    var saveData: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ramenshopname.delegate=self
    }
    @IBAction func editfinish() {
        saveData.objectForKey("shopname") as! String?
        saveData.synchronize()
//        print("保存完了\(ramenNameArray)")
        performSegueWithIdentifier("tostart", sender: nil)
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
