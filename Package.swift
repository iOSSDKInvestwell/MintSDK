// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MintSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MintSDK",
            targets: ["MintFrameworks", "VoltFramework"]
        ),
        .library(
            name: "MintFrameworks",
            targets: ["MintFrameworks"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MintFrameworks",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.0/MintFrameworks.xcframework.zip",
            checksum: "d219eb2ffdefbd45328c5c8ffc5cf3158bb49f813b7f40525b7a7cb80efeb972"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.0/VoltFramework.xcframework.zip",
            checksum: "77531ca13c339427b611312f72aaf03e31ed184827de7bf120dc1ec051bd79a8"
        )
    ]
)
