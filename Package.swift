// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "QcSdkLoginKakao", defaultLocalization: "en", platforms: [.iOS(.v17)],

    products: [
        .library(name: "QcSdkLoginKakao", targets: ["QcSdkLoginKakao", "QcSdkLoginKakaoSupport"])
    ],

    dependencies: [
        .package(url: "https://github.com/YuFengChen77/QcSdkCore.git", exact: "1.1.5"),
        .package(url: "https://github.com/kakao/kakao-ios-sdk.git", exact: "2.29.0")
    ],

    targets: [
        .binaryTarget(name: "QcSdkLoginKakao", url: "https://github.com/YuFengChen77/QcSdkLoginKakao/releases/download/1.1.2/QcSdkLoginKakao-1.1.2.xcframework.zip", checksum: "0b073b24af3752afd6102b96aed82b4e865eb6fea66e5e68fd20e9015659824a"),

        .target(name: "QcSdkLoginKakaoSupport", dependencies: ["QcSdkLoginKakao", .product(name: "QcSdkCore", package: "qcsdkcore"), .product(name: "KakaoSDKCommon", package: "kakao-ios-sdk"), .product(name: "KakaoSDKAuth", package: "kakao-ios-sdk"), .product(name: "KakaoSDKUser", package: "kakao-ios-sdk")], path: "QcSdkLoginKakao", sources: ["Sources"])
    ]
)
