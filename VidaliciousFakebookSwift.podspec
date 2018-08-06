#
# Be sure to run `pod lib lint VidaliciousFakebookSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'VidaliciousFakebookSwift'
  s.version          = '0.1.0'
  s.summary          = 'A short description of VidaliciousFakebookSwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/vidalicious/VidaliciousFakebookSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vidalicious' => 'vidalicious@sina.com' }
  s.source           = { :git => 'https://github.com/vidalicious/VidaliciousFakebookSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'VidaliciousFakebookSwift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'VidaliciousFakebookSwift' => ['VidaliciousFakebookSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'IGListKit'
  s.dependency 'RealmSwift'
  s.dependency 'Moya'
  s.dependency 'SwiftyJSON'
  #s.dependency 'AsyncDisplayKit'
  s.dependency 'DZNEmptyDataSet'
  #s.dependency 'ChameleonFramework/Swift'
  s.dependency 'Hero'
  s.dependency 'DeviceKit'
  s.dependency 'Charts'
  s.dependency 'MGSwipeTableCell'
  #s.dependency 'RandomKit'
  s.dependency 'RxSwift'
  s.dependency 'GDPerformanceView-Swift'
  s.dependency 'Alamofire'
  s.dependency 'SwiftyStoreKit'
  s.dependency 'FSCalendar' 

end
