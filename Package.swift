// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleConversionTrackingWrapper",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoogleConversionTrackingWrapper",
            targets: ["GoogleConversionTrackingWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "GoogleConversionTrackingWrapper",
            dependencies: [
                .target(name: "GoogleConversionTracking")
            ],
            publicHeadersPath:"include"
        ),
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                   name: "GoogleConversionTracking",
                   url: "https://www.dropbox.com/s/zs1ohvdqeps1nki/GoogleConversionTracking.xcframework.zip?dl=1",
                   checksum: "eef942ceb937f108e3c00bcf8674deaa275c202afb5ea0f661974fcfdecaf349"),

    ]
)
