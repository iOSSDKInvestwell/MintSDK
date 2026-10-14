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
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.1.4/MintFrameworks.xcframework.zip",
            checksum: "6b0a5b107d8a11e6a69c6407d0cd9108fbecfe2489fcfca827a4650d865870db"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.1.4/VoltFramework.xcframework.zip",
            checksum: "2b70b419b91491a6b2d1be49d72218d4da8ee052074dd2b21acd339f54be004b"
        )
    ]
)
