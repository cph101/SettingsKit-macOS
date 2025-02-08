// swift-tools-version: 5.7
//
//  Package.swift
//  SettingsKit
//
//  Created by david-swift on 19.01.23.
//

import PackageDescription

/// The SettingsKit package.
let package = Package(
    name: "SettingsKit",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SettingsKit",
            targets: ["SettingsKit"]
        )
    ],
    targets: [
        .target(
            name: "SettingsKit",
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]
        ),
        .testTarget(
            name: "SettingsKitTests",
            dependencies: ["SettingsKit"],
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]
        )
    ]
)
