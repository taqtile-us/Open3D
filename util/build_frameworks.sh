# Open3D

# xcodebuild build \
#     -project build/Open3D.xcodeproj \
#     -scheme ext_qhull \
#     -destination "generic/platform=iOS" \
#     BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# xcodebuild build \
#     -project build/Open3D.xcodeproj \
#     -scheme ext_turbojpeg \
#     -destination "generic/platform=iOS" \
#     BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
#     -verbose

XCCONFIG=./util/platforms/override.xcconfig

# xcodebuild build \
#     -project build/Open3D.xcodeproj \
#     -scheme Open3D \
#     -destination "generic/platform=iOS" \
#     BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
#     -verbose
# -xcconfig $XCCONFIG

# xcodebuild -project build/Open3D.xcodeproj -target ext_qhull -configuration Release
xcodebuild -project build/Open3D.xcodeproj -target install -configuration Release
# xcodebuild -project build/Open3D.xcodeproj -target Open3D -configuration Release

# rm -rf build/lib/iOS“
# inc=../../../ios/install/include
# headersPath=../../../tqios/install/include

# cd build/lib/Release
# for a in *.a
# do
#   echo "$a"
#   rm -rf "$a.xcframework"

#   if [ "$a" = "libOpen3D.a" ]
#   then
#     xcodebuild -create-xcframework -library "$a" -headers "$headersPath" -output "$a.xcframework" 
#   else
#     xcodebuild -create-xcframework -library "$a" -output "$a.xcframework" 
#   fi
# done


# cd ./build/lib/Release/


# -Wshorten-64-to-32
# -Wno-shorten-64-to-32

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wshorten-64-to-32"

#pragma clang diagnostic pop

# OfflineReconstruction


# error: Signing for "minigzip" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'minigzip' from project 'zlib')
# error: Signing for "zlib" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'zlib' from project 'zlib')
# error: Signing for "example" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'example' from project 'zlib')

# error: Signing for "strtest" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'strtest' from project 'libjpeg-turbo')
# error: Signing for "djpeg-static" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'djpeg-static' from project 'libjpeg-turbo')
# error: Signing for "tjbench-static" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'tjbench-static' from project 'libjpeg-turbo')
# error: Signing for "rdjpgcom" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'rdjpgcom' from project 'libjpeg-turbo')
# error: Signing for "wrjpgcom" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'wrjpgcom' from project 'libjpeg-turbo')
# error: Signing for "tjunittest-static" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'tjunittest-static' from project 'libjpeg-turbo')
# error: Signing for "md5cmp" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'md5cmp' from project 'libjpeg-turbo')
# error: Signing for "jpegtran-static" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'jpegtran-static' from project 'libjpeg-turbo')
# error: Signing for "cjpeg-static" requires a development team. Select a development team in the Signing & Capabilities editor. (in target 'cjpeg-static' from project 'libjpeg-turbo')


#  CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO

# xcodebuild archive \
#     -project build/Open3D.xcodeproj \
#     -scheme ext_zlib \
#     -destination "generic/platform=iOS" \
#     BUILD_LIBRARY_FOR_DISTRIBUTION=YES
#     -verbose
# xcodebuild -project build/Open3D.xcodeproj -target ext_zlib -configuration Release -verbose

# xcodebuild -project build/Open3D.xcodeproj -target Open3D -configuration Release

# xcodebuild -project build/turbojpeg/src/ext_turbojpeg-build/libjpeg-turbo.xcodeproj -target turbojpeg-static -configuration Release -sdk iphoneos

# xcodebuild archive \
#   -project build/Open3D.xcodeproj \
#   -scheme ext_qhull \
#   -destination "generic/platform=iOS" \ 
#   BUILD_LIBRARY_FOR_DISTRIBUTION=YES

#   xcodebuild archive 
#     -project MyFramework.xcodeproj
#     -scheme MyFramework
#     -destination "generic/platform=iOS"
#     -archivePath "archives/MyFramework"

# "generic/platform=iOS Simulator"
# SKIP_INSTALL=NO

# xcodebuild -create-xcframework
#     -archive archives/MyFramework-iOS.xcarchive -framework MyFramework.framework
#     -archive archives/MyFramework-iOS_Simulator.xcarchive -framework MyFramework.framework
#     -archive archives/MyFramework-macOS.xcarchive -framework MyFramework.framework
#     -archive archives/MyFramework-Mac_Catalyst.xcarchive -framework MyFramework.framework
#     -output xcframeworks/MyFramework.xcframework


# mv build/lib/Release/Python/cpu/*.so build/lib/Release/Python/cpu/pybind.a

# rm -rf build/lib/iOS
# mv build/lib/Release build/lib/iOS

# xcodebuild -project build/Open3D.xcodeproj -target pybind -configuration Release -sdk iphonesimulator -xcconfig $XCCONFIG
# mv build/lib/Release/Python/cpu/*.so build/lib/Release/Python/cpu/pybind.a

# cd build/lib/Release

# inc=../../../ios/install/include

# for a in *.a Python/cpu/*.a
# do
#   rm -rf $a.xcframework
#   case $a in
#     libOpen3D.a)
#       xcodebuild -create-xcframework -library $a -headers $inc -library ../iOS/$a -headers $inc -output $a.xcframework ;;
#     *)
#       xcodebuild -create-xcframework -library $a -library ../iOS/$a -output $a.xcframework ;;
#   esac
# done

# cd -


# # JPEG

# xcodebuild -project build/turbojpeg/src/ext_turbojpeg-build/libjpeg-turbo.xcodeproj -target turbojpeg-static -configuration Release -sdk iphoneos -xcconfig $XCCONFIG
# xcodebuild -project build/turbojpeg/src/ext_turbojpeg-build/libjpeg-turbo.xcodeproj -target turbojpeg-static -configuration Release -sdk iphonesimulator -xcconfig $XCCONFIG

# rm -rf build/turbojpeg/src/ext_turbojpeg-build/JPEG.xcframework

# xcodebuild -create-xcframework \
#   -library build/turbojpeg/src/ext_turbojpeg-build/Release-iphoneos/libturbojpeg.a \
#   -output build/turbojpeg/src/ext_turbojpeg-build/JPEG.xcframework
#   -library build/turbojpeg/src/ext_turbojpeg-build/Release-iphonesimulator/libturbojpeg.a \


# # png

# xcodebuild -project build/libpng/src/ext_libpng-build/libpng.xcodeproj -target png_static -configuration Release -sdk iphoneos -xcconfig $XCCONFIG
# xcodebuild -project build/libpng/src/ext_libpng-build/libpng.xcodeproj -target png_static -configuration Release -sdk iphonesimulator -xcconfig $XCCONFIG

# rm -rf build/libpng/src/ext_libpng-build/png.xcframework

# xcodebuild -create-xcframework \
#   -library build/libpng/src/ext_libpng-build/Release-iphoneos/libpng16.a \
#   -library build/libpng/src/ext_libpng-build/Release-iphonesimulator/libpng16.a \
#   -output build/libpng/src/ext_libpng-build/png.xcframework


# # jsoncpp

# xcodebuild -project build/jsoncpp/src/ext_jsoncpp-build/jsoncpp.xcodeproj -target jsoncpp_static -configuration Release -sdk iphoneos -xcconfig $XCCONFIG

# rm -f build/jsoncpp/src/ext_jsoncpp-build/lib/libjsoncpp.a
# mv build/jsoncpp/src/ext_jsoncpp-build/lib/Release/libjsoncpp.a build/jsoncpp/src/ext_jsoncpp-build/lib

# xcodebuild -project build/jsoncpp/src/ext_jsoncpp-build/jsoncpp.xcodeproj -target jsoncpp_static -configuration Release -sdk iphonesimulator -xcconfig $XCCONFIG

# rm -rf build/jsoncpp/src/ext_jsoncpp-build/jsoncpp.xcframework

# xcodebuild -create-xcframework \
#   -library build/jsoncpp/src/ext_jsoncpp-build/lib/libjsoncpp.a \
#   -library build/jsoncpp/src/ext_jsoncpp-build/lib/Release/libjsoncpp.a \
#   -output build/jsoncpp/src/ext_jsoncpp-build/jsoncpp.xcframework

# xcodebuild -create-xcframework \
#   -library build/jsoncpp/src/ext_jsoncpp-build/lib/Release/libjsoncpp.a \
#   -output build/jsoncpp/jsoncpp.xcframework


# Faiss

# xcodebuild -project build/faiss/src/ext_faiss-build/faiss.xcodeproj -target faiss -configuration Release -sdk iphoneos -xcconfig $XCCONFIG
# xcodebuild -project build/faiss/src/ext_faiss-build/faiss.xcodeproj -target faiss -configuration Release -sdk iphonesimulator -xcconfig $XCCONFIG

# rm -rf build/faiss/src/ext_faiss-build/Faiss.xcframework

# xcodebuild -create-xcframework \
#   -library build/faiss/src/ext_faiss-build/faiss/Release-iphoneos/libfaiss.a \
#   -output build/faiss/src/ext_faiss-build/Faiss.xcframework
#   -library build/faiss/src/ext_faiss-build/faiss/Release-iphonesimulator/libfaiss.a \ 


# # TBB

# xcodebuild -project build/tbb/src/ext_tbb-build/tbb.xcodeproj -target tbb_static -configuration Release -sdk iphoneos -xcconfig $XCCONFIG
# xcodebuild -project build/tbb/src/ext_tbb-build/tbb.xcodeproj -target tbb_static -configuration Release -sdk iphonesimulator -xcconfig $XCCONFIG

# rm -rf build/tbb/src/ext_tbb-build/TBB.xcframework

# xcodebuild -create-xcframework \
#   -library build/tbb/src/ext_tbb-build/Release-iphoneos/libtbb_static.a \
#   -output build/tbb/src/ext_tbb-build/TBB.xcframework
#   -library build/tbb/src/ext_tbb-build/Release-iphonesimulator/libtbb_static.a \


# # Assimp

# xcodebuild -project build/assimp/src/ext_assimp-build/Assimp.xcodeproj -target assimp -configuration Release -sdk iphoneos -xcconfig $XCCONFIG
# xcodebuild -project build/assimp/src/ext_assimp-build/Assimp.xcodeproj -target assimp -configuration Release -sdk iphonesimulator -xcconfig $XCCONFIG

# rm -rf build/assimp/lib/Assimp.xcframework

# xcodebuild -create-xcframework \
#    -library build/assimp/src/ext_assimp-build/lib/Release/libassimp.a \
#    -output build/assimp/Assimp.xcframework

#   -library build/assimp/src/ext_assimp-build/code/Release-iphoneos/libassimp.a \
#   -library build/assimp/src/ext_assimp-build/code/Release-iphonesimulator/libassimp.a \
#   -output build/assimp/lib/Assimp.xcframework


# rm -rf build/assimp/lib/IrrXML.xcframework

# xcodebuild -create-xcframework \
#   -library build/assimp/src/ext_assimp-build/contrib/irrXML/Release-iphoneos/libIrrXML.a \
#   -library build/assimp/src/ext_assimp-build/contrib/irrXML/Release-iphonesimulator/libIrrXML.a \
#   -output build/assimp/lib/IrrXML.xcframework

# xcodebuild -create-xcframework \
#   -library build/assimp/src/ext_assimp-build/contrib/zlib/Release-iphoneos/libzlibstatic.a \
#   -output build/assimp/lib/libzlibstatic.xcframework