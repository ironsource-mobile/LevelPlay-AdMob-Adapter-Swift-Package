// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-AdMob-Adapter-Swift-Package",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "AdMobAdapter", targets: ["AdMobAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "13.7.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "AdMobAdapter",
      dependencies: [
        "AdMobAdapterSDK",
        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "AdMobAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/admob-adapter/5.12.0/ISAdMobAdapter5.12.0.zip",
      checksum: "6b89bae636c2250507c55ad59c70a4b90cb00310d1bda2171a5c2ae7220ee2a9"
    )
  ]
)
