# libffmpeg-ios
 FFmpeg static libraries.

### Build iOS

build script is based on [FFmpeg-iOS-build-script](https://github.com/kewlbear/FFmpeg-iOS-build-script)


* To build everything:
```
./build-ffmpeg.sh
```	

* PS
```
After compile, if you want to custom your own library, you shoud notice three points: 
copy ./ffmpeg-4.4/libavformat/avc.h  --->  ./FFmpeg-iOS/include/libavformat/
```

#### Dependencies
```
// iOS
- AVFoundation.framework
- AudioToolBox.framework
- VideoToolBox.framework
- libiconv.tbd
- libbz2.tbd
- libz.tbd

- FFmpeg 4.4
```

