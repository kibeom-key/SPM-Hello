# SPM-Hello

## Here is ChatGPT's answer to create a simple library using SPM.

1. Create a new directory for your library, navigate into it using the terminal,  
 and initialize the package using the swift package init command.

2. Write the code for your library in a new Swift file, such as Hello.swift. For example:
    ~~~swift
    public class Hello {
        public func hello() -> String {
            return "Hello, World!"
        }
    }
    ~~~

3. Write test cases for your library in a new Swift file, such as HelloTests.swift. For example:
    ~~~swift
    import XCTest
    @testable import SPM_Hello

    final class HelloTests: XCTestCase {
        func testHello() {
            let h = Hello()
            XCTAssertEqual(h.hello(), "Hello, World!")
        }
    }
    ~~~

4. Specify the package's dependencies and targets in the Package.swift file. For example:
    ~~~swift
    // swift-tools-version:5.5
    // The swift-tools-version declares the minimum version of Swift required to build this package.

    import PackageDescription

    let package = Package(
        name: "SPM-Hello",
        products: [
            // Products define the executables and libraries a package produces, and make them visible to other packages.
            .library(
                name: "SPM-Hello",
                targets: ["SPM-Hello"]),
        ],
        dependencies: [
            // Dependencies declare other packages that this package depends on.
            // .package(url: /* package url */, from: "1.0.0"),
        ],
        targets: [
            // Targets are the basic building blocks of a package. A target can define a module or a test suite.
            // Targets can depend on other targets in this package, and on products in packages this package depends on.
            .target(
                name: "SPM-Hello",
                dependencies: []),
            .testTarget(
                name: "SPM-HelloTests",
                dependencies: ["SPM-Hello"]),
        ]
    )    
    ~~~

5. Build and test the library using the swift build and swift test commands, respectively.

6. Once you're satisfied with your library, you can publish it to a Git repository, such as GitHub, using the git init and git add . commands, followed by git commit and git push.

7. Other developers can then include your library in their own projects by adding it as a dependency in their Package.swift file or by using Xcode's built-in support for Swift Package Manager.