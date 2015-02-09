//
//  PageContentViewController.swift
//  RaiseTheRoof
//
//  Created by Josh Kahl on 2/7/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController
{
  //should only appear on the final page
  
  @IBOutlet weak var mapButton: UIButton!
  @IBAction func toMap(sender: AnyObject)
  {
    let toVC = self.storyboard?.instantiateViewControllerWithIdentifier("SignUpVC") as SignUpViewController
    self.navigationController?.pushViewController(toVC, animated: true)

  }
  
  var hideButton : Bool   = false
  var itemIndex  : Int    = 0
  var imageName  : String = "default"
  {
    didSet
    {
      if let imageView = contentImageView
      {
        imageView.image = UIImage(named: imageName)
      }
    }
  }
  
  
  @IBOutlet var contentImageView: UIImageView?
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    contentImageView!.image = UIImage(named: imageName)
    self.mapButton.hidden   = self.hideButton
  }
}
