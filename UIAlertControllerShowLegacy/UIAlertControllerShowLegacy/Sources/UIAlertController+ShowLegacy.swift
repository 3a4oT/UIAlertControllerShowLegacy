//
//  UIAlertController+ShowLegacy.swift
//  DemoAlertLegacy
//
//  Created by Petro Rovenskyy on 1/7/17.
//  Copyright © 2017 Petro Rovenskyy. All rights reserved.
//

import UIKit

public protocol UIAlertControllerShowLegacy {
	func show() -> Void
	func show(animated: Bool) -> Void
}


extension UIAlertController: UIAlertControllerShowLegacy {
	
	fileprivate struct AssociatedKeys {
		static var alertWindowAssociatedKey = "alertWindowAssociatedKey"
	}
	
	// MARK: - always show in it's own window
	fileprivate var alertWindow: UIWindow? {
		get {
			return objc_getAssociatedObject(self, &AssociatedKeys.alertWindowAssociatedKey) as? UIWindow
		}
		set {
			objc_setAssociatedObject(self, &AssociatedKeys.alertWindowAssociatedKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
		}
	}
	
	
	fileprivate  struct StaticRouter {
		static let swizzling: (UIAlertController.Type) -> () = { alertViewController in
			
			let originalSelector = #selector(alertViewController.viewDidDisappear(_:))
			let swizzledSelector = #selector(alertViewController.avl_viewDidDisappear(animated:))
			
			let originalMethod = class_getInstanceMethod(alertViewController, originalSelector)
			let swizzledMethod = class_getInstanceMethod(alertViewController, swizzledSelector)
			
			method_exchangeImplementations(originalMethod, swizzledMethod)
		}
	}
	
	// MARK: - Prepare for Cocoa Swizzling
	open override class func initialize() {
		// make sure this isn't a subclass
		guard self === UIAlertController.self else { return }
		StaticRouter.swizzling(self)
	}
	
	// MARK: - Method Swizzling
	func avl_viewDidDisappear(animated: Bool) {
		//call original method first
		self.avl_viewDidDisappear(animated: animated)
		
		self.alertWindow?.isHidden = true;
		self.alertWindow = nil
	}
	
	
 public func show(animated: Bool) -> Void {
	self.alertWindow = UIWindow(frame: UIScreen.main.bounds)
	self.alertWindow?.rootViewController = UIViewController()
	let delegate: UIApplicationDelegate? = UIApplication.shared.delegate
	if delegate?.window != nil {
		self.alertWindow?.tintColor = delegate?.window!?.tintColor
	}
	
	let topWindow: UIWindow? = UIApplication.shared.windows.last
	self.alertWindow?.windowLevel = (topWindow?.windowLevel)! + 1
	
	self.alertWindow?.makeKeyAndVisible()
	
	self.alertWindow?.rootViewController?.present(self, animated: animated, completion: nil)
	
	}
	
	public func show() -> Void {
		self.show(animated: true)
	}
	
}
