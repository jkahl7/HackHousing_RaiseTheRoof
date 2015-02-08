//
//  WebViewController.swift
//  RaiseTheRoof
//
//  Created by Brian (Hackathon) on 2/7/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
  
    var webView: WKWebView?
    var googleSDKAPIkey = "AIzaSyC5Cpmbau9vTgzePChPjzQj4_DIMe_R5xE"
    
  @IBOutlet var containerView : UIView? = nil

    override func loadView() {
        super.loadView()
//        self.webView = WKWebView()
//        self.view = self.webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

      var camera = GMSCameraPosition.cameraWithLatitude(-33.86,
        longitude: 151.20, zoom: 6)
      var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
      mapView.myLocationEnabled = true
      self.view = mapView
      
      var marker = GMSMarker()
      marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
      marker.title = "Sydney"
      marker.snippet = "Australia"
      marker.map = mapView
      
      
//        var url = NSURL(string: "http://www.google.com")
//        var req = NSURLRequest(URL:url!)
//        self.webView!.loadRequest(req)
      
      
      
      
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
