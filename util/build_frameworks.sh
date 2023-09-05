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
# xcodebuild -project build/Open3D.xcodeproj -target install -configuration Release
xcodebuild -project build/Open3D.xcodeproj -target Open3D -configuration Release

# cd ./build/lib/Release/
