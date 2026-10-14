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
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.1.2/MintFrameworks.xcframework.zip",
            checksum: "a041afc428e1fe2e9392f0d9dd9b8d6899e345a207213a83711c06244403fa43"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.1.2/VoltFramework.xcframework.zip",
            checksum: "6906839f0b538c9fe859ad543b2b3d0eaa3daae9fbd5328b76100bd8b1689abd"
        )
    ]
)
