import ProjectDescription

let project = Project(
    name: "tuistTest",
    targets: [
        .target(
            name: "tuistTest",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.tuistTest",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["tuistTest/Sources/**"],
            resources: ["tuistTest/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "tuistTestTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.tuistTestTests",
            infoPlist: .default,
            sources: ["tuistTest/Tests/**"],
            resources: [],
            dependencies: [.target(name: "tuistTest")]
        ),
    ]
)
