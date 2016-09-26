#
#  Be sure to run `pod spec lint PodLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name            = "PodLibrary"
  s.version         = "0.0.1"
  s.summary         = "PodLibrary is meant to be a test to check how to create a cocoapods pod out of a common library"
  s.license         = { :type => "MIT", :file => "LICENSE" }
  s.author          = { "David Martin" => "david@martinmacias.com" }
  s.platform        = :ios, "7.0"
  s.homepage        = "https://github.com/cerberillo/podLibrary"
  s.source          = { :git => "https://github.com/cerberillo/podLibrary.git", :tag => "#{s.version}" }
  s.source_files    = "podLibrary/podLibrary/*.{h,m}"
  s.framework       = "AdSupport"

end
