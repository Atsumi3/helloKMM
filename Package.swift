// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "helloKMM",
    products: [
        .library(
            name: "helloKMM",
            targets: ["helloKMM"]),
    ],
    dependencies: [

    ],
    targets: [
        .binaryTarget(
            name: "helloKMM",
            url: "https://github.com/Atsumi3/helloKMM/releases/download/1.0.1/helloKMM.xcframework.zip"
            checksum: "8b0a3d23eb1804e9a1431b7dd81857c5308f15c49d21b840f2fc91c4cfb63366"
        )
    ]
)
