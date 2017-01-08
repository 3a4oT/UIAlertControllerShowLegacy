# UIAlertControllerShowLegacy

Starting from iOS 9 `UIAlertView` is deprecated and Apple suggest to  use `UIAlertController` with a `preferredStyle` of `UIAlertControllerStyleAlert` instead.

This extension will add method `show` from `UIAlertView` to `UIAlertController`. So, YES, you can again show alert from `NSObject`. To my mind, we should not do it too often and try to use plain `UIAlertController` methods however sometimes there is no quick way to refactor code especially when it's legacy code.
