// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PokerHistory",
  platforms: [
    .macOS(SupportedPlatform.MacOSVersion.v11),
    .iOS(SupportedPlatform.IOSVersion.v14),
  ],
  products: [
    .library(name: "Entity", targets: ["Entity"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-composable-architecture.git", .branch("iso")),
  ],
  targets: [
    .target(name: "Entity"),
    .testTarget(name: "EntityTests", dependencies: ["Entity"])
  ]
)
