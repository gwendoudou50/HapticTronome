#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The resource bundle ID.
static NSString * const ACBundleID AC_SWIFT_PRIVATE = @"com.gaube.HapticTronome";

/// The "AccentColor" asset catalog color resource.
static NSString * const ACColorNameAccentColor AC_SWIFT_PRIVATE = @"AccentColor";

/// The "AppBackground" asset catalog color resource.
static NSString * const ACColorNameAppBackground AC_SWIFT_PRIVATE = @"AppBackground";

/// The "AppBlack" asset catalog color resource.
static NSString * const ACColorNameAppBlack AC_SWIFT_PRIVATE = @"AppBlack";

/// The "AppButtonGradientDark" asset catalog color resource.
static NSString * const ACColorNameAppButtonGradientDark AC_SWIFT_PRIVATE = @"AppButtonGradientDark";

/// The "AppButtonGradientLight" asset catalog color resource.
static NSString * const ACColorNameAppButtonGradientLight AC_SWIFT_PRIVATE = @"AppButtonGradientLight";

/// The "AppDarkGrey" asset catalog color resource.
static NSString * const ACColorNameAppDarkGrey AC_SWIFT_PRIVATE = @"AppDarkGrey";

/// The "AppGrey" asset catalog color resource.
static NSString * const ACColorNameAppGrey AC_SWIFT_PRIVATE = @"AppGrey";

/// The "AppPrimary" asset catalog color resource.
static NSString * const ACColorNameAppPrimary AC_SWIFT_PRIVATE = @"AppPrimary";

/// The "AppPurpleGrey" asset catalog color resource.
static NSString * const ACColorNameAppPurpleGrey AC_SWIFT_PRIVATE = @"AppPurpleGrey";

/// The "AppUltraDarkGrey" asset catalog color resource.
static NSString * const ACColorNameAppUltraDarkGrey AC_SWIFT_PRIVATE = @"AppUltraDarkGrey";

/// The "AppUnderCirclePotard" asset catalog color resource.
static NSString * const ACColorNameAppUnderCirclePotard AC_SWIFT_PRIVATE = @"AppUnderCirclePotard";

/// The "AppWhite" asset catalog color resource.
static NSString * const ACColorNameAppWhite AC_SWIFT_PRIVATE = @"AppWhite";

/// The "ScreenBackground" asset catalog color resource.
static NSString * const ACColorNameScreenBackground AC_SWIFT_PRIVATE = @"ScreenBackground";

/// The "BackgroundImage" asset catalog image resource.
static NSString * const ACImageNameBackgroundImage AC_SWIFT_PRIVATE = @"BackgroundImage";

/// The "LaunchScreenLogo" asset catalog image resource.
static NSString * const ACImageNameLaunchScreenLogo AC_SWIFT_PRIVATE = @"LaunchScreenLogo";

#undef AC_SWIFT_PRIVATE
