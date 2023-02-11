//
//  HelloTests.swift
//  
//
//  Created by kb on 2023/02/12.
//

import Foundation
import XCTest
@testable import SPM_Hello

final class HelloTests: XCTestCase {
    func testHello() {
        let h = Hello()
        XCTAssertEqual(h.hello(), "Hello, World!")
    }
}
