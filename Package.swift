// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Core",
    products: [
        .library(
            name: "NetworkProtocols",
            targets: ["NetworkProtocols"]
        )
    ],
    targets: [
        .target(name: "NetworkProtocols")
    ]
)
