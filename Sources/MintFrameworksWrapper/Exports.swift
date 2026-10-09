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
    _ = SwiftyJSON.JSON.self
    _ = Lottie.LottieAnimationView.self
    _ = DGCharts.ChartViewBase.self
    _ = CropViewController.CropViewController.self
    _ = SideMenu.SideMenuNavigationController.self
    _ = SDWebImage.SDWebImageManager.self
    _ = IQKeyboardManagerSwift.IQKeyboardManager.self
    _ = YPImagePicker.YPImagePicker.self
    _ = NVActivityIndicatorView.NVActivityIndicatorView.self
}
