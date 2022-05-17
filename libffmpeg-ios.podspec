libavcodec = 'libavcodec'
libavformat = 'libavformat'
libavutil = 'libavutil'
libswresample = 'libswresample'
libswscale = 'libswscale'
libavdevice = 'libavdevice'
libavfilter = 'libavfilter'

NAME = "libffmpeg-ios"
VERSION = "4.4"

Pod::Spec.new do |s|

  s.name         = "#{NAME}"
  s.version      = "#{VERSION}"
  s.summary      = "A pod repo of 4.4 FFmpeg static libraries for ios."
  s.description  = "FFmpeg code base"

  s.homepage     = "https://github.com/liuqiaohong0515/libffmpeg-ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Limit" => "liuqiaohong0515@gmail.com" }
  s.requires_arc = false
  s.source       = { :git => "https://github.com/liuqiaohong0515/libffmpeg-ios", :tag => "#{s.version}" }

  s.ios.deployment_target = '11.0'

  s.ios.preserve_paths = "src/ios/#{s.version}/include"
  s.ios.header_mappings_dir = "src/ios/#{s.version}/include"
  
  s.subspec libavcodec do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavcodec}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavcodec}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavcodec}/*.h"

  end

  s.subspec libavformat do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavformat}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavformat}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavformat}/*.h"

  end

  s.subspec libavutil do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavutil}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavutil}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavutil}/*.h"

  end

  s.subspec libswresample do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libswresample}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libswresample}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libswresample}/*.h"

  end

  s.subspec libswscale do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libswscale}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libswscale}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libswscale}/*.h"

  end

  s.subspec libavdevice do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavdevice}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavdevice}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavdevice}/*.h"

  end

  s.subspec libavfilter do |sub|

    sub.ios.source_files        = "src/ios/#{s.version}/include/#{libavfilter}/*.h"
    sub.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libavfilter}.a"
    sub.ios.public_header_files = "src/ios/#{s.version}/include/#{libavfilter}/*.h"

  end

  s.library    = "iconv", "lzma", "bz2", "z"
  s.frameworks = ["VideoToolbox", "AudioToolbox", 'AVFoundation']
  # s.dependency   "openssl"

end