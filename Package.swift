// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FoodItemBinary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FoodItemBinary",
            targets: ["FoodItemBinary", "FoodItem"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FoodItemBinary",
            dependencies: []),
        .binaryTarget(
              name: "FoodItem",
              url:
                "https://github.com/dogahe/Apple-Frameworks/releases/download/1.0.0/FoodItem.zip",
              checksum: "7978321702d42ba9130dbeee577903eea8c6aa7b4ac23d517a8c8d496ea4ca63"),
        .testTarget(
            name: "FoodItemBinaryTests",
            dependencies: ["FoodItemBinary"]),
    ]
)


