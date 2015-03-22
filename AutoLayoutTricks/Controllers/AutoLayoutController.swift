//
//  AutoLayoutController.swift
//  AutoLayoutTricks
//
//  Created by Brad Bambara on 9/30/14.
//  Copyright (c) 2014 Brad Bambara. All rights reserved.
//

import UIKit

class AutoLayoutController: UIViewController {

	//MARK: constraint resizing
	
	@IBOutlet weak var constraint1: NSLayoutConstraint!
	@IBOutlet weak var constraint2: NSLayoutConstraint!
	
	@IBAction func slider1Changed(sender: AnyObject) {
		
		constraint1.constant = CGFloat((sender as UISlider).value)
	}
	
	@IBAction func slider2Changed(sender: AnyObject) {
		
		constraint2.constant = CGFloat((sender as UISlider).value)
	}
	
	//MARK: view remove
	
	@IBOutlet weak var removableView: UIView!

	@IBAction func removeView(sender: AnyObject) {
		
		removableView.removeFromSuperview()
	}
	
	//MARK: animating constraints
	
	@IBAction func animateViews(sender: AnyObject) {
		
		constraint1.constant = CGFloat(arc4random_uniform(200))
		constraint2.constant = CGFloat(arc4random_uniform(200))
		
		UIView.animateWithDuration(0.5, animations: {
			self.view.setNeedsUpdateConstraints()
			self.view.layoutIfNeeded()
		})
	}
	
}
