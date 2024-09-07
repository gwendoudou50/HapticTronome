import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

    /// The "AccentColor" asset catalog color resource.
    static let accent = DeveloperToolsSupport.ColorResource(name: "AccentColor", bundle: resourceBundle)

    /// The "AppBackground" asset catalog color resource.
    static let appBackground = DeveloperToolsSupport.ColorResource(name: "AppBackground", bundle: resourceBundle)

    /// The "AppBlack" asset catalog color resource.
    static let appBlack = DeveloperToolsSupport.ColorResource(name: "AppBlack", bundle: resourceBundle)

    /// The "AppButtonGradientDark" asset catalog color resource.
    static let appButtonGradientDark = DeveloperToolsSupport.ColorResource(name: "AppButtonGradientDark", bundle: resourceBundle)

    /// The "AppButtonGradientLight" asset catalog color resource.
    static let appButtonGradientLight = DeveloperToolsSupport.ColorResource(name: "AppButtonGradientLight", bundle: resourceBundle)

    /// The "AppDarkGrey" asset catalog color resource.
    static let appDarkGrey = DeveloperToolsSupport.ColorResource(name: "AppDarkGrey", bundle: resourceBundle)

    /// The "AppGrey" asset catalog color resource.
    static let appGrey = DeveloperToolsSupport.ColorResource(name: "AppGrey", bundle: resourceBundle)

    /// The "AppPrimary" asset catalog color resource.
    static let appPrimary = DeveloperToolsSupport.ColorResource(name: "AppPrimary", bundle: resourceBundle)

    /// The "AppPurpleGrey" asset catalog color resource.
    static let appPurpleGrey = DeveloperToolsSupport.ColorResource(name: "AppPurpleGrey", bundle: resourceBundle)

    /// The "AppUltraDarkGrey" asset catalog color resource.
    static let appUltraDarkGrey = DeveloperToolsSupport.ColorResource(name: "AppUltraDarkGrey", bundle: resourceBundle)

    /// The "AppUnderCirclePotard" asset catalog color resource.
    static let appUnderCirclePotard = DeveloperToolsSupport.ColorResource(name: "AppUnderCirclePotard", bundle: resourceBundle)

    /// The "AppWhite" asset catalog color resource.
    static let appWhite = DeveloperToolsSupport.ColorResource(name: "AppWhite", bundle: resourceBundle)

    /// The "ScreenBackground" asset catalog color resource.
    static let screenBackground = DeveloperToolsSupport.ColorResource(name: "ScreenBackground", bundle: resourceBundle)

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "BackgroundImage" asset catalog image resource.
    static let background = DeveloperToolsSupport.ImageResource(name: "BackgroundImage", bundle: resourceBundle)

    /// The "LaunchScreenLogo" asset catalog image resource.
    static let launchScreenLogo = DeveloperToolsSupport.ImageResource(name: "LaunchScreenLogo", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// The "AccentColor" asset catalog color.
    static var accent: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .accent)
#else
        .init()
#endif
    }

    /// The "AppBackground" asset catalog color.
    static var appBackground: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appBackground)
#else
        .init()
#endif
    }

    /// The "AppBlack" asset catalog color.
    static var appBlack: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appBlack)
#else
        .init()
#endif
    }

    /// The "AppButtonGradientDark" asset catalog color.
    static var appButtonGradientDark: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appButtonGradientDark)
#else
        .init()
#endif
    }

    /// The "AppButtonGradientLight" asset catalog color.
    static var appButtonGradientLight: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appButtonGradientLight)
#else
        .init()
#endif
    }

    /// The "AppDarkGrey" asset catalog color.
    static var appDarkGrey: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appDarkGrey)
#else
        .init()
#endif
    }

    /// The "AppGrey" asset catalog color.
    static var appGrey: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appGrey)
#else
        .init()
#endif
    }

    /// The "AppPrimary" asset catalog color.
    static var appPrimary: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appPrimary)
#else
        .init()
#endif
    }

    /// The "AppPurpleGrey" asset catalog color.
    static var appPurpleGrey: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appPurpleGrey)
#else
        .init()
#endif
    }

    /// The "AppUltraDarkGrey" asset catalog color.
    static var appUltraDarkGrey: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appUltraDarkGrey)
#else
        .init()
#endif
    }

    /// The "AppUnderCirclePotard" asset catalog color.
    static var appUnderCirclePotard: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appUnderCirclePotard)
#else
        .init()
#endif
    }

    /// The "AppWhite" asset catalog color.
    static var appWhite: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .appWhite)
#else
        .init()
#endif
    }

    /// The "ScreenBackground" asset catalog color.
    static var screenBackground: AppKit.NSColor {
#if !targetEnvironment(macCatalyst)
        .init(resource: .screenBackground)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// The "AccentColor" asset catalog color.
    static var accent: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .accent)
#else
        .init()
#endif
    }

    /// The "AppBackground" asset catalog color.
    static var appBackground: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appBackground)
#else
        .init()
#endif
    }

    /// The "AppBlack" asset catalog color.
    static var appBlack: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appBlack)
#else
        .init()
#endif
    }

    /// The "AppButtonGradientDark" asset catalog color.
    static var appButtonGradientDark: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appButtonGradientDark)
#else
        .init()
#endif
    }

    /// The "AppButtonGradientLight" asset catalog color.
    static var appButtonGradientLight: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appButtonGradientLight)
#else
        .init()
#endif
    }

    /// The "AppDarkGrey" asset catalog color.
    static var appDarkGrey: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appDarkGrey)
#else
        .init()
#endif
    }

    /// The "AppGrey" asset catalog color.
    static var appGrey: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appGrey)
#else
        .init()
#endif
    }

    /// The "AppPrimary" asset catalog color.
    static var appPrimary: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appPrimary)
#else
        .init()
#endif
    }

    /// The "AppPurpleGrey" asset catalog color.
    static var appPurpleGrey: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appPurpleGrey)
#else
        .init()
#endif
    }

    /// The "AppUltraDarkGrey" asset catalog color.
    static var appUltraDarkGrey: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appUltraDarkGrey)
#else
        .init()
#endif
    }

    /// The "AppUnderCirclePotard" asset catalog color.
    static var appUnderCirclePotard: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appUnderCirclePotard)
#else
        .init()
#endif
    }

    /// The "AppWhite" asset catalog color.
    static var appWhite: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .appWhite)
#else
        .init()
#endif
    }

    /// The "ScreenBackground" asset catalog color.
    static var screenBackground: UIKit.UIColor {
#if !os(watchOS)
        .init(resource: .screenBackground)
#else
        .init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    /// The "AccentColor" asset catalog color.
    static var accent: SwiftUI.Color { .init(.accent) }

    /// The "AppBackground" asset catalog color.
    static var appBackground: SwiftUI.Color { .init(.appBackground) }

    /// The "AppBlack" asset catalog color.
    static var appBlack: SwiftUI.Color { .init(.appBlack) }

    /// The "AppButtonGradientDark" asset catalog color.
    static var appButtonGradientDark: SwiftUI.Color { .init(.appButtonGradientDark) }

    /// The "AppButtonGradientLight" asset catalog color.
    static var appButtonGradientLight: SwiftUI.Color { .init(.appButtonGradientLight) }

    /// The "AppDarkGrey" asset catalog color.
    static var appDarkGrey: SwiftUI.Color { .init(.appDarkGrey) }

    /// The "AppGrey" asset catalog color.
    static var appGrey: SwiftUI.Color { .init(.appGrey) }

    /// The "AppPrimary" asset catalog color.
    static var appPrimary: SwiftUI.Color { .init(.appPrimary) }

    /// The "AppPurpleGrey" asset catalog color.
    static var appPurpleGrey: SwiftUI.Color { .init(.appPurpleGrey) }

    /// The "AppUltraDarkGrey" asset catalog color.
    static var appUltraDarkGrey: SwiftUI.Color { .init(.appUltraDarkGrey) }

    /// The "AppUnderCirclePotard" asset catalog color.
    static var appUnderCirclePotard: SwiftUI.Color { .init(.appUnderCirclePotard) }

    /// The "AppWhite" asset catalog color.
    static var appWhite: SwiftUI.Color { .init(.appWhite) }

    /// The "ScreenBackground" asset catalog color.
    static var screenBackground: SwiftUI.Color { .init(.screenBackground) }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    /// The "AccentColor" asset catalog color.
    static var accent: SwiftUI.Color { .init(.accent) }

    /// The "AppBackground" asset catalog color.
    static var appBackground: SwiftUI.Color { .init(.appBackground) }

    /// The "AppBlack" asset catalog color.
    static var appBlack: SwiftUI.Color { .init(.appBlack) }

    /// The "AppButtonGradientDark" asset catalog color.
    static var appButtonGradientDark: SwiftUI.Color { .init(.appButtonGradientDark) }

    /// The "AppButtonGradientLight" asset catalog color.
    static var appButtonGradientLight: SwiftUI.Color { .init(.appButtonGradientLight) }

    /// The "AppDarkGrey" asset catalog color.
    static var appDarkGrey: SwiftUI.Color { .init(.appDarkGrey) }

    /// The "AppGrey" asset catalog color.
    static var appGrey: SwiftUI.Color { .init(.appGrey) }

    /// The "AppPrimary" asset catalog color.
    static var appPrimary: SwiftUI.Color { .init(.appPrimary) }

    /// The "AppPurpleGrey" asset catalog color.
    static var appPurpleGrey: SwiftUI.Color { .init(.appPurpleGrey) }

    /// The "AppUltraDarkGrey" asset catalog color.
    static var appUltraDarkGrey: SwiftUI.Color { .init(.appUltraDarkGrey) }

    /// The "AppUnderCirclePotard" asset catalog color.
    static var appUnderCirclePotard: SwiftUI.Color { .init(.appUnderCirclePotard) }

    /// The "AppWhite" asset catalog color.
    static var appWhite: SwiftUI.Color { .init(.appWhite) }

    /// The "ScreenBackground" asset catalog color.
    static var screenBackground: SwiftUI.Color { .init(.screenBackground) }

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "BackgroundImage" asset catalog image.
    static var background: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .background)
#else
        .init()
#endif
    }

    /// The "LaunchScreenLogo" asset catalog image.
    static var launchScreenLogo: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .launchScreenLogo)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "BackgroundImage" asset catalog image.
    static var background: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .background)
#else
        .init()
#endif
    }

    /// The "LaunchScreenLogo" asset catalog image.
    static var launchScreenLogo: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .launchScreenLogo)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

