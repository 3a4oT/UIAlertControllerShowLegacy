//
//  ViewController.swift
//  DemoAlertLegacy
//
//  Created by Petro Rovenskyy on 1/7/17.
//  Copyright © 2017 Petro Rovenskyy. All rights reserved.
//

import UIKit
import UIAlertControllerShowLegacy

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let alert: UIAlertController = UIAlertController(title:"Test title", message: "Test message", preferredStyle: .alert)
		let okAction: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
		alert.addAction(okAction)
		alert.show()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

