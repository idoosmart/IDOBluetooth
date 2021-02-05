#
# Be sure to run `pod lib lint IDOBlueUpdate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IDOBluetooth'
  s.version          = '3.7.0'
  s.summary          = 'IDOBluetooth is dependent on the IDOBlueProtocol, so before using the Bluetooth management library, the bluetooth protocol library will be piloted into.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'When you apply an unconnected bound device, you need to create a view controller to implement the SDK Bluetooth proxy. After scanning the peripherals, the agent will return the device set and display in the list, select the device to be connected, return device information and whether the device is in OTA mode after successful connection, and there will be an error callback if the connection fails. The default scan signal filtering parameter is 80, and the automatic scan connection timeout is 20 seconds. IDOBluetooth is dependent on the IDOBlueProtocol, so before using the Bluetooth management library, the bluetooth protocol library will be piloted into.'

  s.homepage         = 'http://www.idoosmart.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hedongyang' => 'hedy@idoosmart.com' }
  s.source           = { :git => 'https://github.com/idoosmart/IDOBluetooth.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  # 上传framewrok
  s.vendored_frameworks   = 'IDOBluetooth.framework'

  # 上传源文件
  # s.source_files = 'IDOBlueUpdate/Classes/**/*'
  
  # s.resource_bundles = {
  #   'IDOBlueUpdate' => ['IDOBlueUpdate/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit', 'Foundation', 'CoreBluetooth'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'IDOBlueProtocol'
end
