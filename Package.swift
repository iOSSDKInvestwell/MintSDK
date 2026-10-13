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
            targets: ["MintFrameworksWrapper"]
        ),
        .library(
            name: "MintFrameworks",
            targets: ["MintFrameworksWrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MintFrameworksBinary",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.1/MintFrameworks.xcframework.zip",
            checksum: "fc9648877105f95c5fba77928f2e76cf5fc53894d6eeb91805ab5ef307d8468c"
        ),
        .binaryTarget(
            name: "VoltFrameworkBinary",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.1/VoltFramework.xcframework.zip",
            checksum: "6747bec44bfb4477e8d9a6b259d95510994e336f5c499d8de2f8425c3c93b3b6"
        ),
        .target(
            name: "MintFrameworksWrapper",
            dependencies: [
                .target(name: "MintFrameworksBinary"),
                .target(name: "VoltFrameworkBinary")
            ],
            path: "Sources/MintFrameworksWrapper"
        )
    ]
)
