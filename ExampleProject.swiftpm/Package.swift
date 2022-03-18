// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription

#if canImport(AppleProductTypes)
    import AppleProductTypes

    let products: [Product] = [
                .iOSApplication(
                    name: "ExampleProject",
                    targets: ["ExampleProject"],
                    displayVersion: "1.0",
                    bundleVersion: "1",
                    appIcon: .asset("AppIcon"),
                    supportedDeviceFamilies: [
                        .pad,
                        .phone
                    ],
                    supportedInterfaceOrientations: [
                        .portrait,
                        .landscapeRight,
                        .landscapeLeft,
                        .portraitUpsideDown(.when(deviceFamilies: [.pad]))
                    ]
                )
    ]
#else
    let products: [Product] = []
#endif

let package = Package(
    name: "ExampleProject",
    platforms: [
        .iOS("15.2"),
        .macOS("11.0")
    ],
    products: products,
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "ExampleProject",
            path: "App"
        )
    ]
)