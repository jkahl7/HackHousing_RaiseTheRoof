//
//  startViewController.swift
//  RaiseTheRoof
//
//  Created by Josh Kahl on 2/7/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit

class startViewController: UIViewController, UIPageViewControllerDataSource
{

  @IBOutlet weak var startButton: UIButton!
  
  private var pageViewController: UIPageViewController?
  
  private let contentImages = ["walk1", "walk2", "walk3", "walk4", "walk5"]
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    createPageViewController()
    setupPageControl()
  }
  
  
  //this method instantiates the PageViewController object - which serves as a controller for all of the individual VC's
  private func createPageViewController()
  {
    let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageViewController") as UIPageViewController
    //sets the startVC as the dataSource for the PageVC
    pageController.dataSource = self
    
    if (contentImages.count > 0)
    {
      let firstController                  = getItemController(0)!
      let startingViewControllers: NSArray = [firstController]
     
      pageController.setViewControllers(startingViewControllers, direction: UIPageViewControllerNavigationDirection.Forward,
                                                                  animated: false,
                                                                completion: nil)
    }
    
    pageViewController = pageController
   
    addChildViewController(pageViewController!)
    self.view.addSubview(pageViewController!.view)
    pageViewController!.didMoveToParentViewController(self)
  }
  
  
  private func setupPageControl()
  {
    let appearance                           = UIPageControl.appearance()
    appearance.backgroundColor               = UIColor.darkGrayColor()
    appearance.pageIndicatorTintColor        = UIColor.grayColor()
    appearance.currentPageIndicatorTintColor = UIColor.whiteColor()
  }
  
  
  //MARK:  PageViewController Datasource
  func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
  {
    let itemController = viewController as PageContentViewController
    
    if (itemController.itemIndex > 0)
    {
      return getItemController(itemController.itemIndex - 1)
    }
    return nil
  }
  
  
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
  {
    let itemController = viewController as PageContentViewController
    
    if (itemController.itemIndex + 1 < contentImages.count)
    {
      return getItemController(itemController.itemIndex + 1)
    }
    return nil
  }
  
  
  private func getItemController(itemIndex: Int) -> PageContentViewController?
  {
    if (itemIndex < contentImages.count)
    {
      let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("Content") as PageContentViewController
      pageItemController.itemIndex = itemIndex
      pageItemController.imageName = self.contentImages[itemIndex]
      if (itemIndex == contentImages.count - 1) // if true we are on the final VC -> button is no longer hidden
      {
        pageItemController.hideButton = false
      } else {
        pageItemController.hideButton = true
      }
      
      return pageItemController
    }
    return nil
  }
  
  
  func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
  {
    return contentImages.count
  }
  
  func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
  {
    return 0
  }
  


}
