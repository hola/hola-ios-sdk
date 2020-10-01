Pod::Spec.new do |s|
    s.name                  = "HolaSDK"
    s.version               = "0.1.10"
    s.summary               = "HolaSDK"
    s.description           = "HolaSDK for iOS"
    s.homepage              = "https://hola.org"
    s.license               = { :type => "Copyright", :text => "Copyright 2020"}
    s.author                = { "volodymyr" => "volodymyr@hola.org" }
    s.source                = { :git => "https://github.com/hola/hola-ios-sdk.git", :tag => "#{s.version}" }
    s.public_header_files   = "HolaSDK.framework/Headers/*.h"
    s.source_files          = "HolaSDK.framework/Headers/*.h"
    s.vendored_frameworks   = "HolaSDK.framework"
    s.platform              = :ios
    s.swift_version         = "5.0"
    s.ios.deployment_target = "8.0"
end
