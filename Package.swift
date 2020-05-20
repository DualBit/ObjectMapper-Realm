// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let realmVersionStr = "4.4.1"
let objectMapperVersionStr = "4.2.0"

let package = Package(
    name: "ObjectMapper+Realm",
    platforms: [
        .iOS(.v8),
        .tvOS(.v10),
        .macOS(.v10_10),
    ],
    products: [
        .library(
            name: "ObjectMapper+Realm",
            targets: ["ObjectMapper+Realm"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-cocoa.git", .upToNextMajor(from: realmVersionStr)),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: objectMapperVersionStr)),
    ],
    targets: [
        .target(
            name: "ObjectMapper+Realm",
            dependencies: [
                "RealmSwift",
                "ObjectMapper"
            ],
            path: "ObjectMapper+Realm",
            exclude: [
                "ObjectMapper+RealmTest"
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
