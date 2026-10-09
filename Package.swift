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
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.6/MintFrameworks.xcframework.zip",
            checksum: "baeb7df91d07994c8061180889982e57aa98d90bf1774d78b7c8d1613629cb92"
        ),
        .binaryTarget(
            name: "VoltFrameworkBinary",
            url: "https://github.com/iOSSDKInvestwell/MintSDK/releases/download/4.0.6/VoltFramework.xcframework.zip",
            checksum: "0386f425c8b739f875a39203209957c20a87358ac0ac105b47cd0b8d6c9c99c2"
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
