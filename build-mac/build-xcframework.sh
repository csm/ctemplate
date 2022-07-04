#!/bin/sh

set -e

rm -rf ctemplate.xcframework

xcodebuild archive \
    -project ctemplate.xcodeproj \
    -scheme "ctemplate ios framework" \
    -destination "generic/platform=iOS" \
    -archivePath "ctemplate-ios" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
    -project ctemplate.xcodeproj \
    -scheme "ctemplate ios framework" \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "ctemplate-ios-simulator" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
    -project ctemplate.xcodeproj \
    -scheme "ctemplate ios framework" \
    -destination "generic/platform=OS X" \
    -archivePath "ctemplate-maccatalyst" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
    -project ctemplate.xcodeproj \
    -scheme "ctemplate-macos-framework" \
    -destination "generic/platform=OS X" \
    -archivePath "ctemplate-macos" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
    -framework ./ctemplate-ios.xcarchive/Products/Library/Frameworks/ctemplate.framework \
    -framework ./ctemplate-ios-simulator.xcarchive/Products/Library/Frameworks/ctemplate.framework \
    -framework ./ctemplate-maccatalyst.xcarchive/Products/Library/Frameworks/ctemplate.framework \
    -framework ./ctemplate-macos.xcarchive/Products/Library/Frameworks/ctemplate.framework \
    -output ctemplate.xcframework
