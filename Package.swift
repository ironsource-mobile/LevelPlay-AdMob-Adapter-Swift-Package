// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-AdMob-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "AdMobAdapter", targets: ["AdMobAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "13.2.0"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "AdMobAdapter",
      dependencies: [
        "AdMobAdapterSDK",
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "AdMobAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/admob-adapter/5.7.0/ISAdMobAdapter5.7.0.zip",
      checksum: "0ef4eab4871c510d1b92c4c42534dcc6e95c33a1c0885b3bfcbbbf3edb938c04"
    )
  ]
)
