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
            url: "https://github.com/Atsumi3/helloKMM/archive/refs/tags/1.0.0.zip"
        )
    ]
)
