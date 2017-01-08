# UIAlertControllerShowLegacy

Starting from iOS 9 `UIAlertView` is deprecated and Apple suggest to  use `UIAlertController` with a `preferredStyle` of `UIAlertControllerStyleAlert` instead.

This extension will add method `show` from `UIAlertView` to `UIAlertController`. So, YES, you can again show alert from `NSObject`. To my mind, we should not do it too often and try to use plain `UIAlertController` methods however sometimes there is no quick way to refactor code especially when it's legacy code.

# How to use?

**Cocoapods**
```ruby
pod 'UIAlertControllerShowLegacy'
```
 **Swift**

```swift

import UIKit
import UIAlertControllerShowLegacy

class FooService: NSObject {
	public func fooRequest() -> Void {
		let alert: UIAlertController = UIAlertController(title:"Test title", message: "Test message", preferredStyle: .alert)
		let okAction: UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
		alert.addAction(okAction)
		alert.show()
	}
}
```

**Objective-C**

```Objective-C

#import "BarService.h"
#import <UIKit/UIKit.h>
#import <UIAlertControllerShowLegacy/UIAlertControllerShowLegacy-Swift.h>


@implementation BarService

- (void)barRequest {
	UIAlertController *alert =
	[UIAlertController alertControllerWithTitle:@"Test bar title"
										message:@"Test bar obj-c request"
								 preferredStyle:UIAlertControllerStyleAlert];

	UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
													   style:UIAlertActionStyleDefault
													 handler:nil];
	[alert addAction:okAction];

	[alert show];
}

@end

```





# License

The MIT License (MIT)

Copyright (c) 2017 Petro Rovenskyy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
