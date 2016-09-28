#
#  Be sure to run `pod spec lint PodLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name            = "delayer"
  s.version         = "1.0.0"
  s.summary         = "Delayer is meant to callback after the specified delay"
  s.license         = { :type => "MIT", :file => "LICENSE" }
  s.author          = { "David Martin" => "david@martinmacias.com" }
  s.platform        = :ios, "7.0"
  s.homepage        = "https://github.com/cerberillo/delayer"
  s.source          = { :git => "https://github.com/cerberillo/delayer.git",
                        :tag => "#{s.version}" }
  s.source_files    = "delayer/delayer/*.{h,m}"
  s.framework       = "AdSupport"

end
