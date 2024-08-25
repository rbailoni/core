// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Core",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NetworkProtocols",
            targets: ["NetworkProtocols"]
        ),
        .library(
            name: "ViewCodeProtocols",
            targets: ["ViewCodeProtocols"]
        ),
        .library(
            name: "Errors",
            targets: ["Errors"]
        ),
        .library(
            name: "Extensions",
            targets: ["Extensions"]
        )
    ],
    targets: [
        .target(name: "NetworkProtocols"),
        .target(name: "ViewCodeProtocols"),
        .target(name: "Errors"),
        .target(name: "Extensions")
    ]
)
