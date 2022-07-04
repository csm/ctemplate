// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ctemplate",
    platforms: [
        .iOS(.v9), .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "ctemplate",
            targets: ["ctemplate ios framework", "ctemplate-macos-framework"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ctemplate",
            url: "https://github.com/csm/ctemplate/releases/download/xcframework-1/ctemplate.xcframework.zip",
            checksum: "e8891148ad8982b57f69e39dbc2c9f33ea3219ac266bb09ff774e07865bf6833"
        )
    ]
)