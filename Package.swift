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
    dependencies: [
        .package(url: "https://github.com/danielgindi/Charts.git", from: "5.1.0"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", from: "8.0.3"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.6.1"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.21.7"),
        .package(url: "https://github.com/jonkykong/SideMenu.git", from: "6.5.0"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.2"),
        .package(url: "https://github.com/TimOliver/TOCropViewController.git", from: "3.2.0"),
        .package(url: "https://github.com/Yummypets/YPImagePicker.git", from: "5.4.0"),
        .package(url: "https://github.com/ninjaprox/NVActivityIndicatorView.git", from: "5.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "MintFrameworksBinary",
            url: "https://github.com/investwell-tools/mint-ios-sdk/releases/download/1.0.0/MintFrameworks.xcframework.zip",
            checksum: "20070efd50271760dac26e2985c0e0a61cdc0c18ae62b7d869786a2e7ac2eb85"
        ),
        .binaryTarget(
            name: "VoltFrameworkBinary",
            url: "https://github.com/investwell-tools/mint-ios-sdk/releases/download/1.0.0/VoltFramework.xcframework.zip",
            checksum: "4651a3eaf3844d74818385900ea72d07ffdbb6c1a827aa182b26575d8d91c02e"
        ),
        .target(
            name: "MintFrameworksWrapper",
            dependencies: [
                .target(name: "MintFrameworksBinary"),
                .target(name: "VoltFrameworkBinary"),
                .product(name: "DGCharts", package: "Charts"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "SideMenu", package: "SideMenu"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "TOCropViewController", package: "TOCropViewController"),
                .product(name: "CropViewController", package: "TOCropViewController"),
                .product(name: "YPImagePicker", package: "YPImagePicker"),
                .product(name: "NVActivityIndicatorView", package: "NVActivityIndicatorView")
            ],
            path: "Sources/MintFrameworksWrapper"
        )
    ]
)
