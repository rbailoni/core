// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Core",
    products: [
        .library(
            name: "NetworkProtocols",
            targets: ["NetworkProtocols"]
        ),
        .library(
            name: "ViewCodeProtocols",
            targets: ["ViewCodeProtocols"]
        )
    ],
    targets: [
        .target(name: "NetworkProtocols"),
        .target(name: "ViewCodeProtocols")
    ]
)
