//
//  ProtoBuf_ClientTests.swift
//  ProtoBuf-ClientTests
//
//  Created by Rumata on 12/6/17.
//  Copyright © 2017 Yalantis. All rights reserved.
//

import XCTest
import Alamofire
import SwiftProtobuf
import ProtoBuf_Client
@testable import ObjectMapper

class ProtoBuf_Tests: XCTestCase {

  private var data: Data?

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    if data != nil {
      return
    }
    let exp = expectation(description: "setup")

    Alamofire.request("http://localhost:8181/events").responseData { (response) in
      defer {
        exp.fulfill()
      }
      guard let data = response.data else {
        return
      }

      self.data = data
    }

    waitForExpectations(timeout: 15) { (_) in
      print("loaded")
    }
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      guard let data = self.data else {
        return
      }
      let events = try! HistoricalEvents(serializedData: data)
      XCTAssert(events.events.count > 0, "OK")
    }
  }

}

class JSON_Tests: XCTestCase {

  private var data: Data?

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    if data != nil {
      return
    }
    let exp = expectation(description: "setup")

    Alamofire.request("http://localhost:8181/events/json").responseData { (response) in
      defer {
        exp.fulfill()
      }
      guard let data = response.data else {
        return
      }

      self.data = data
    }

    waitForExpectations(timeout: 15) { (_) in
      print("loaded")
    }
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testJSONperformance() {
    // This is an example of a performance test case.
    self.measure {
      guard let data = self.data, let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
        return
      }
      let events: [HistoricalEventJSON] = try! Mapper<HistoricalEventJSON>().mapArray(JSONObject: json)
      XCTAssert(events.count > 0, "OK")
    }
  }
  
}
