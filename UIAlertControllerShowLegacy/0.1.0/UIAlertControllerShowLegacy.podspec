Pod::Spec.new do |s|
  s.name             = 'UIAlertControllerShowLegacy'
  s.version          = '0.1.0'
  s.summary          = 'Add method show from UIAlertView to UIAlertController'

  s.description      = "This extension will add method `show` from UIAlertView to UIAlertController. So, YES, you can again show alert from NSObject."

  s.homepage         = 'https://github.com/3a4ot/UIAlertControllerShowLegacy'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Petro Rovenskyy' => 'petro.rovenskyy@gmail.com' }
  s.source           = { :git => 'https://github.com/3a4ot/UIAlertControllerShowLegacy.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'UIAlertControllerShowLegacy/UIAlertControllerShowLegacy/**/*.{swift}'

end
