//
//  ViewController.swift
//  SlotMachine
//
//  Created by Rod Brewster on 9/23/14.
//  Copyright (c) 2014 Rod Brewster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //These are the properities for the containers. We're doing everythingin code so we don't need @IBAction
    
    var firstContainer: UIView! //implicit unwrapped optional for the first view container
    var secondContainer: UIView! //implicit unwrapped optional for the second view container
    var thirdContainer: UIView! //implicit unwrapped optional for the third view container
    var fourthContainer: UIView! //implicit unwrapped optional for the fourth view container
    
    //Constants
    
    let kMarginForView:CGFloat = 10.0 //Margin for the containers
    let kSixth:CGFloat = 1.0/6.0 //Width scaler for containters
    
    
    
    
//-------------------------------- ViewDidLoad -------------------------------------------------
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpContainerViews()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//--------------------------------- Functions Cerated Here -------------------------------------
    
    func setUpContainerViews() {
        
        //Set up the FIRST container in code. Note that origin is 0,0 which is in the very upper left of the screen
        self.firstContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + kMarginForView, self.view.bounds.origin.y, self.view.bounds.width - (2 * kMarginForView), self.view.bounds.height * kSixth)) //contaner is shifter over on the x axis, and the width and height are made smaller using the constants
        
        self.firstContainer.backgroundColor = UIColor.redColor() //Set the background of the first container to red.
        
        self.view.addSubview(self.firstContainer) // add the first container view to the background view. The background view is called view.
        
        
        //Set up the SECOND container in code.
        self.secondContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + kMarginForView, firstContainer.frame.height, self.view.bounds.width - (2 * kMarginForView), self.view.bounds.height * kSixth * 3)) //contaner is shifter over on the x axis, and the width and height are made smaller using the constants. The Y coordinate for the second container is the same as the frame height of the first container. This will place the second container directly below the first container
        
        self.secondContainer.backgroundColor = UIColor.blackColor() //Set the background of the second container to black.
        
        self.view.addSubview(self.secondContainer) // add the second container view to the background view. The background view is called view.
        
        
        //Set up the THIRD container in code.
        self.thirdContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + kMarginForView, firstContainer.frame.height + secondContainer.frame.height, self.view.bounds.width - (2 * kMarginForView), self.view.bounds.height * kSixth)) //contaner is shifter over on the x axis, and the width and height are made smaller using the constants. The Y coordinate for the third container is the same as the frame height of the first container pluse the frame height of the second container. This will place the third container directly below the second container.
        
        self.thirdContainer.backgroundColor = UIColor.grayColor() //Set the background of the third container to black.
        
        self.view.addSubview(self.thirdContainer) // add the third container view to the background view. The background view is called view.
        
        
        
        //Set up the FOURTH container in code.
        self.fourthContainer = UIView(frame: CGRectMake(self.view.bounds.origin.x + kMarginForView, firstContainer.frame.height + secondContainer.frame.height + thirdContainer.frame.height, self.view.bounds.width - (2 * kMarginForView), self.view.bounds.height * kSixth)) //contaner is shifter over on the x axis, and the width and height are made smaller using the constants. The Y coordinate for the fourth container is the same as the frame height of the first container pluse the frame height of the second container pluse the frame height of the third container. This will place the fourth container directly below the third container.
        
        self.fourthContainer.backgroundColor = UIColor.blackColor() //Set the background of the fourth container to black.
        
        self.view.addSubview(self.fourthContainer) // add the fourth container view to the background view. The background view is called view.
        
        
    }
    
}

