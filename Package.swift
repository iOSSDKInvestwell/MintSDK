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
            url: "https://github.com///releases/download/3.0.1/MintFrameworks.xcframework.zip",
            checksum: "e1ca124e17256fbbef7440cace392810afee13c0c335405aef27bc68d340f6a1"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com///releases/download/3.0.1/VoltFramework.xcframework.zip",
            checksum: "b566ffd12616ccbfe2f4549cbf09adc9a61144b82af81362978f0b788d456058"
        )
    ]
)
