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

// Forces the linker to keep all external dependencies.
// MintFrameworksBinary references these modules, but nothing else in this
// wrapper otherwise does, so without a real reference Xcode drops them and
// the client app fails with "Undefined symbol" at link time. The top-level
// initializer runs at module load, forcing the linker to keep every dep.
private let _MintFrameworksForceLink: Bool = {
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
    return true
}()
