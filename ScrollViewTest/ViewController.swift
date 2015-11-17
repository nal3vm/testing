//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by Nathan on 11/12/15.
//  Copyright © 2015 Nathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var mainView: UIView!
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let screenSize: CGRect = UIScreen.mainScreen().bounds;
        
        let screenWidth = screenSize.width;
        let screenHeight = screenSize.height;
        

        
        let profileView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight));
        profileView.backgroundColor = UIColor.blueColor();
        mainScrollView.addSubview(profileView);
        
        let mapView: UIView = UIView(frame: CGRect(x: screenWidth, y: 0, width: screenWidth, height: screenHeight));
        mapView.backgroundColor = UIColor.redColor();
        mainScrollView.addSubview(mapView);
//        
//        let friendView: UIView = UIView(frame: CGRect(x: screenWidth*2, y: 0, width: screenWidth, height: screenHeight));
//        friendView.backgroundColor = UIColor.greenColor();
//        mainScrollView.addSubview(friendView);

        
        mainView.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height);
        
        mainScrollView.scrollEnabled = true;
        mainScrollView.pagingEnabled = true;
        mainScrollView.contentSize = CGSize(width: 2*screenWidth, height: screenHeight);
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

