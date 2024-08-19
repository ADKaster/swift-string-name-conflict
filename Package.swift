// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLib",
    platforms: [
      .macOS(.v15)
    ],
    products: [
        .library(
            name: "MyLib",
            targets: ["MyLib"]),
    ],
    targets: [
        .target(
            name: "AK",
            publicHeadersPath: "."),
        .target(
            name: "MyLib",
            dependencies: [ "AK" ],
            swiftSettings: [
              .interoperabilityMode(.Cxx)
           ]),
    ],
    cxxLanguageStandard: .cxx20)
