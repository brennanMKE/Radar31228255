//
//  EverythingTests.swift
//  EverythingTests
//
//  Created by Brennan Stehling on 3/23/17.
//  Copyright © 2017 SmallSharpTools LLC. All rights reserved.
//

import XCTest
@testable import Everything

import Networking
import AudioConverter

class EverythingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNetworking() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        NetworkClient.sharedInstance.doNetworkingStuff()
    }

    func testParsing() {
        let parser = Parser()
        parser.parse()
    }

    func testAudioConverter() {
        let converter = ExtAudioConverter()
        let success = converter.convert()
        XCTAssertFalse(success)
    }

}
