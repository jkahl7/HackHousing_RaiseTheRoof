//
//  NetController.swift
//  RaiseTheRoof
//
//  Created by Josh Kahl on 2/7/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import Foundation


class NetController
{
  
  class var sharedNetController : NetController
  {
  
    struct Static
    {
      static let instance : NetController = NetController()
    }
    return Static.instance
  }
  
  var urlSession = NSURLSession()
  var accessToken : String?
  let clientID = ""
    let redirectURL = ""
    
    
  init()
  {
    let ephermeralConfigeration = NSURLSessionConfiguration.ephemeralSessionConfiguration()
    
  }
  
  
  
  
  
  
  
  
  
}