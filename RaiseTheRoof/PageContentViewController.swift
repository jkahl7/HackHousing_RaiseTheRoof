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

  @IBOutlet weak var contentText: UILabel!
  // MARK: - Variables
  var itemIndex: Int = 0
  var imageName: String = ""
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
  
  // MARK: - View Lifecycle
  override func viewDidLoad()
  {
    super.viewDidLoad()
    contentImageView!.image = UIImage(named: imageName)
  }}
