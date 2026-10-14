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
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.1.3/MintFrameworks.xcframework.zip",
            checksum: "e1621aa51642b764fd83486795d478fa64909d3ed1fd1a89aaa8b49b42a6b9b1"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.1.3/VoltFramework.xcframework.zip",
            checksum: "e4165baec415512f0a8c71983cfc031334c779de13f8e58d19772997eb3d4564"
        )
    ]
)
