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
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.1.5/MintFrameworks.xcframework.zip",
            checksum: "c06537976e3e033dbbdcaa10cdc3bad005b93bc7b70dcf61f5bfff0a278673b0"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.1.5/VoltFramework.xcframework.zip",
            checksum: "42e41d89f95fb38ccea75483bb1dec205449012e7746933d3bff4f906dcd09ec"
        )
    ]
)
