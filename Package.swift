// swift-tools-version:5.6

import PackageDescription // Import the PackageDescription module

let package = Package( // Define a new package
    name: "With", // Set the name of the package to "With"
    products: [ // Define the products of the package
        .library( // Define a library product
            name: "With", // Set the name of the library to "With"
            targets: ["With"]) // Set the targets of the library to the "With" target
    ],
    dependencies: [], // Set the dependencies of the package to an empty array
    targets: [ // Define the targets of the package
        .target( // Define a target
            name: "With", // Set the name of the target to "With"
            dependencies: []) // Set the dependencies of the target to an empty array
    ]
)