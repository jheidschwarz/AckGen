// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AckGen",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .executable(name: "ackgen", targets: ["AckGenCLI"]),
        .library(name: "AckGen", targets: ["AckGen"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "AckGenCLI",
            dependencies: ["AckGen"]),
        .target(
            name: "AckGen",
            dependencies: [])
    ])
