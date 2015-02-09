//
//  SignUpViewController.swift
//  RaiseTheRoof
//
//  Created by Josh Kahl on 2/8/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate
{

  
  @IBOutlet weak var homeBase: UIImageView!
  
  @IBOutlet weak var signUpText: UILabel!
  
  @IBOutlet weak var userName: UITextField!
  
  @IBOutlet weak var passWord: UITextField!
  
  @IBOutlet weak var signUp: UIButton!
  
  @IBAction func signUpSelected(sender: UIButton)
  {
    println("signup selected")
    let toVC = self.storyboard?.instantiateViewControllerWithIdentifier("Quiz0VC") as UIViewController
    
    self.navigationController?.pushViewController(toVC, animated: true)
    
  }
  
  
  
  
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
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
