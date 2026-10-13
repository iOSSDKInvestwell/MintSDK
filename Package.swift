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
            url: "https://github.com/${GITHUB_USER}/${GITHUB_REPO}/releases/download/${VERSION}/MintFrameworks.xcframework.zip",
            checksum: "f5cfff10163c39bcf74abfdb311879b49ee24446b5f94697e0832e40a5ea21ed"
        ),
        .binaryTarget(
            name: "VoltFramework",
            url: "https://github.com/${GITHUB_USER}/${GITHUB_REPO}/releases/download/${VERSION}/VoltFramework.xcframework.zip",
            checksum: "5538079867527d6312d9da1233b972080fd0712dd3d7054653b63010134b5799"
        )
    ]
)
