//
//  ViewController.swift
//  DemoAlertLegacy
//
//  Created by Petro Rovenskyy on 1/7/17.
//  Copyright © 2017 Petro Rovenskyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Swift
		let foo: FooService = FooService()
		foo.fooRequest()
		
		//Objective-C
		let bar: BarService = BarService()
		bar.barRequest()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

