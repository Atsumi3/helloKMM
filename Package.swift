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
            url: "https://github.com/Atsumi3/helloKMM/releases/download/1.0.2/helloKMM.xcframework.zip",
            checksum: "e087d198d12aba8352fb8ed43d81402c8e4f865af175ed4b5a48926fb4bf63db"
        )
    ]
)
