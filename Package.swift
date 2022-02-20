// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "TvOSMoreButton",
    defaultLocalization: "en",
    platforms: [
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "TvOSMoreButton",
            targets: ["TvOSMoreButton"])
    ],
    dependencies: [
        .package(name: "SnapshotTesting", url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.9.0")
    ],
    targets: [
        .target(
            name: "TvOSMoreButton",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "TvOSMoreButtonTests",
            dependencies: ["TvOSMoreButton", "SnapshotTesting"],
            exclude: ["Info.plist"],
            resources: [
                .process("Public/Views/__Snapshots__/Tests_TvOSMoreButton"),
                .process("Resources/Localizable.strings")
            ]
        )
    ]
)
