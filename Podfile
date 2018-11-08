# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'VidaliciousFakebookSwift' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for VidaliciousFakebookSwift
  pod 'EasyPeasy'
  pod 'FoldingCell'	
end

swift_40 = ['EasyPeasy']
swift_42 = ['FoldingCell']

post_install do |installer|
    installer.pods_project.targets.each do |target|
        swift_version = nil
        
        if swift_40.include?(target.name)
            print "set pod #{target.name} swift version to 4.0\n"
            swift_version = '4.0'
        end
        
        if swift_42.include?(target.name)
            print "set pod #{target.name} swift version to 4.2\n"
            swift_version = '4.2'
        end
        
        if swift_version
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = swift_version
            end
        end
    end
end
