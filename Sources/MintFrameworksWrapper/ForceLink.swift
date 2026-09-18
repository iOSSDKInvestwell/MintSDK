import DGCharts
import IQKeyboardManagerSwift
import Lottie
import SDWebImage
import SideMenu
import SwiftyJSON
import TOCropViewController
import CropViewController
import YPImagePicker
import NVActivityIndicatorView

/// Call once at app startup (e.g. AppDelegate didFinishLaunching):
/// `MintSDKForceLink()`
///
/// The MintFrameworks binary references these modules, but static linking
/// only pulls in object files the app actually uses. Without this call the
/// linker drops Lottie/Charts/etc. and the build fails with
/// "Undefined symbol". Calling this forces every dependency to link.
public func MintSDKForceLink() {
    _ = ChartViewBase.self
    _ = IQKeyboardManager.self
    _ = LottieAnimationView.self
    _ = LottieLoopMode.self
    _ = SDWebImageManager.self
    _ = SideMenuNavigationController.self
    _ = JSON.self
    _ = TOCropViewController.self
    _ = CropViewController.self
    _ = YPImagePickerConfiguration.self
    _ = NVActivityIndicatorView.self
}
