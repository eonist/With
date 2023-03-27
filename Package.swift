// swift-tools-version:5.1

import PackageDescription // update to swift 5.6?

let package = Package(
    name: "With",
    products: [
        .library(
            name: "With",
            targets: ["With"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "With",
            dependencies: [])
    ]
)
