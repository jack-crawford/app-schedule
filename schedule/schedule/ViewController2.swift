//
//  ViewController2.swift
//  HH Schedule
//
//  Created by Jack Crawford on 3/30/16.
//  Copyright © 2016 Jack Crawford. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBAction func menubutton(sender: AnyObject) {
        performSegueWithIdentifier("HomePage", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
