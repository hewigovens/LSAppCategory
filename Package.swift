// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "LSAppCategory",
    products: [
        .library(
            name: "LSAppCategory",
            targets: ["LSAppCategory"]
        ),
    ],
    targets: [
        .target(
            name: "LSAppCategory"),
        .testTarget(
            name: "LSAppCategoryTests",
            dependencies: ["LSAppCategory"]
        ),
    ]
)
