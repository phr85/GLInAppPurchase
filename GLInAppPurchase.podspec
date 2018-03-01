#
# Be sure to run `pod lib lint GLInAppPurchase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'GLInAppPurchase'
s.version          = '2.0.5'
s.summary          = 'GLInAppPurchase allows user to use "Tinder InAppPurchase UI" in their App with minimal code.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
GLInAppPurchase is an open source library lets user to make use of Tinder styled inApp Purchase UI, It can also be used as alternative for UIAlertController.
DESC

s.homepage         = 'https://github.com/phr85/GLInAppPurchase'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Philippe H. Regenass' => 'philippe@regenass.name' }
s.source           = { :git => 'https://github.com/phr85/GLInAppPurchase.git', :tag => s.version.to_s }
 s.social_media_url = 'https://twitter.com/philippe_h_r'

s.ios.deployment_target = '8.0'

s.source_files = 'GLInAppPurchase/Classes/**/*'

s.frameworks = 'UIKit'

end
