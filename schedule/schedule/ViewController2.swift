//
//  ViewController2.swift
//  HH Schedule
//
//  Created by Jack Crawford on 3/30/16.
//  Copyright © 2016 Jack Crawford. All rights reserved.
//

import UIKit


class ViewController2: UIViewController {
    @IBOutlet weak var testing_animation: UILabel!
    @IBAction func menubutton(sender: AnyObject) {
        performSegueWithIdentifier("HomePage", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animateWithDuration(2, animations: {self.testing_animation.center.x += self.view.bounds.width
            }, completion: nil)

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
