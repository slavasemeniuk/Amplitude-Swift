// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Amplitude-Swift",
    platforms: [
        .macOS("10.15"),
        .iOS("13.0"),
        .tvOS("13.0"),
        .watchOS("6.0"),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Amplitude-Swift",
            targets: ["Amplitude-Swift"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Amplitude-Swift",
            dependencies: [],
            path: "Sources/Amplitude"
        ),
        .testTarget(
            name: "Amplitude-SwiftTests",
            dependencies: ["Amplitude-Swift"],
            path: "Tests/AmplitudeTests"
        ),
    ]
)