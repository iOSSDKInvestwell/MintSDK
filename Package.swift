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
        .package(url: "https://github.com/Yummypets/YPImagePicker.git", from: "5.4.0")
    ],
    targets: [
        .binaryTarget(
            name: "MintFrameworksBinary",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.2/MintFrameworks.xcframework.zip",
            checksum: "ef0b1b5ee1c4581bd8cabb504f5f0391d24f08d19a6e55fa254dfcea518e36ee"
        ),
        .binaryTarget(
            name: "VoltFrameworkBinary",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.2/VoltFramework.xcframework.zip",
            checksum: "967a87d6e6009e78d3938375d26013b8efcb2d091eca03a4099ad908a58e36c1"
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
                .product(name: "YPImagePicker", package: "YPImagePicker")
            ],
            path: "Sources/MintFrameworksWrapper"
        )
    ]
)
