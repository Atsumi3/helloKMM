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
            url: "https://github.com/Atsumi3/helloKMM/releases/download/1.0.0/helloKMM.xcframework.zip"
            checksum: "bc427bac7b61b45b30968880421e38b81eafb9df82c3b36df0d1c25e7fe2b08a"
        )
    ]
)
