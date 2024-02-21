import UIKit

enum SFSymbols {
    static let location = "mappin.and.ellipse"
    static let repos = "folder"
    static let gists = "text.alignleft"
    static let followers = "heart"
    static let following = "person.2"
}

enum ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLength = min(ScreenSize.width, ScreenSize.height)
}


enum DeviceTypes {
    static let idiom = UIDevice.current.userInterfaceIdiom
    static let nativeScale = UIScreen.main.nativeScale
    static let scale = UIScreen.main.scale
    
    static let isiPhoneSE = idiom == .phone && UIScreen.main.nativeBounds.height == 568.0
    static let isiPhone8Standard = idiom == .phone && UIScreen.main.nativeBounds.height == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed = idiom == .phone && UIScreen.main.nativeBounds.height == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard = idiom == .phone && UIScreen.main.nativeBounds.height == 736.0
    static let isiPhone8PlusZoomed = idiom == .phone && UIScreen.main.nativeBounds.height == 736.0 && nativeScale < scale
    static let isiPhoneX = idiom == .phone && UIScreen.main.nativeBounds.height == 812.0
    static let isiPhoneXsMaxAndXr = idiom == .phone && (UIScreen.main.nativeBounds.height == 896.0 || UIScreen.main.nativeBounds.height == 812.0)
    static let isiPad = idiom == .pad && UIScreen.main.nativeBounds.height >= 1024.0
    
    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXr
    }
}
