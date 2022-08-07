// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MOFirebaseSwiftUITracker",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MOFirebaseSwiftUITracker",
            targets: ["MOFirebaseSwiftUITracker"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: Version(9, 3, 0)),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MOFirebaseSwiftUITracker",
            dependencies: [.product(name: "FirebaseAnalytics", package: "firebase-ios-sdk", condition: .when(platforms: [.iOS]))]),
        .testTarget(
            name: "MOFirebaseSwiftUITrackerTests",
            dependencies: ["MOFirebaseSwiftUITracker"]),
    ]
)
