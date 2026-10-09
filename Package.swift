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
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.4/MintFrameworks.xcframework.zip",
            checksum: "d4b01a3164c679828efe805711b444dc06ed2209e1174f82c1806d3c81588408"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.4/VoltFramework.xcframework.zip",
            checksum: "55ce3d61f729ce0bcdcc493fd2e0addca83575ad7d5b88f76847326262c05885"
        )
    ]
)
