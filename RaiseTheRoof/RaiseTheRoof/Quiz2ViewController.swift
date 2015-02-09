//
//  Quiz2ViewController.swift
//  RaiseTheRoof
//
//  Created by Josh Kahl on 2/8/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit

class Quiz2ViewController: UIViewController {

  @IBAction func doneButton(sender: UIButton)
  {
    let toVC = self.storyboard?.instantiateViewControllerWithIdentifier("TabBarController") as UITabBarController
    
    self.navigationController?.pushViewController(toVC, animated: true)
    
    
    println("doneSelected")
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
