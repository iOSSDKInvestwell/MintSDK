@_exported import Foundation
@_exported import MintFrameworks
@_exported import VoltFramework
@_exported import DGCharts
@_exported import IQKeyboardManagerSwift
@_exported import Lottie
@_exported import SDWebImage
@_exported import SideMenu
@_exported import SwiftyJSON
@_exported import TOCropViewController
@_exported import CropViewController
@_exported import YPImagePicker
@_exported import NVActivityIndicatorView

public func _mintForceLinkDependencies() {
    _ = JSON.self
    _ = LottieAnimationView.self
    _ = ChartViewBase.self
    _ = CropViewController.self
    _ = SideMenuNavigationController.self
    _ = SDWebImageManager.self
    _ = IQKeyboardManager.self
    _ = YPImagePicker.self
    _ = NVActivityIndicatorView.self
}
