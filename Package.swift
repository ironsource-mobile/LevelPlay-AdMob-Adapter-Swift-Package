// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-AdMob-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "AdMobAdapter", targets: ["AdMobAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", exact: "12.14.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/admob-adapter/5.4.0/ISAdMobAdapter5.4.0.zip",
      checksum: "4ff123668669770729db27d3294d17bc439592c3d58a64ff03411970c2b3f096"
    )
  ]
)
