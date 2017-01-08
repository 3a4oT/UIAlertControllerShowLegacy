//
//  FooService.swift
//  DemoAlertLegacy
//
//  Created by Petro Rovenskyy on 1/8/17.
//  Copyright © 2017 Petro Rovenskyy. All rights reserved.
//

import UIKit
import UIAlertControllerShowLegacy

class FooService: NSObject {
	public func fooRequest() -> Void {
		let alert: UIAlertController = UIAlertController(title:"Test foo title", message: "Test foo swift request", preferredStyle: .alert)
		let okAction: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
		alert.addAction(okAction)
		alert.show()
	}
}
