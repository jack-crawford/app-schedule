//
//  ViewController.swift
//  schedule
//
//  Created by Jack Crawford on 2/12/16.
//  Copyright © 2016 Jack Crawford. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var today_label: UILabel!
    var timer = NSTimer()
    @IBOutlet weak var at_label: UILabel!
    @IBOutlet weak var letter_display: UILabel!
    @IBOutlet weak var next_mod_time_label: UILabel!
    @IBOutlet weak var mod_display: UILabel!
    @IBOutlet weak var message_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("hello world")
        //loadweb()
        timer = NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: "loadweb", userInfo: nil, repeats: true)
    }
    
    func loadweb(){
        if let url = NSURL(string: "http://localhost:8888/Schedule-Project/mobile.php") {
            do {
                let contents = try! NSString(contentsOfURL: url, usedEncoding: nil)
                let data = contents.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!
                do {
                    
                    var error:NSError? = nil
                    if let jsonObject: AnyObject = try NSJSONSerialization.JSONObjectWithData(data, options: []) {
                        if let dict = jsonObject as? NSDictionary {
                            print(dict)
                            let cyc = dict["cycleval"] as! String
                            let mod = dict["mod"] as! String
                            let message = dict["messsage"] as? String
                            let mod_time = dict["modstart"] as? String
                            if mod == "over" {
                                letter_display.text = "school";
                                mod_display.text = "is out"
                                next_mod_time_label.text = ""
                                at_label.text = ""
                                //day
                            } else {
                                if mod == "19"{
                                    mod_display.text = "school ends"
                                    next_mod_time_label.text = "3:10"
                                    at_label.text = "at"
                                    letter_display.text = cyc + " Day";
                                    message_label.text = message;

                                }
                                else {
                                    letter_display.text = cyc + " Day";
                                    message_label.text = message;
                                    mod_display.text = "Mod " + mod;
                                    next_mod_time_label.text = mod_time;
                                }
                            }
                            
                            
                            
                        } else {
                            print("not a dictionary")
                        }
                    } else {
                        print("Could not parse JSON: \(error!)")
                    }
                } catch let error as NSError {
                    print("Failed to load: \(error.localizedDescription)")
                }
            }
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}