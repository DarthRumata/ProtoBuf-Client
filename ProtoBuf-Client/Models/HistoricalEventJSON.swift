//
//  HistoricalEventJSON.swift
//  ProtoBuf-Client
//
//  Created by Rumata on 12/6/17.
//  Copyright © 2017 Yalantis. All rights reserved.
//

import Foundation
import ObjectMapper

public struct BattleJSON: ImmutableMappable {
  let duration: Int
  public struct Force: ImmutableMappable {

    let name: String
    let quantity: Int
    let casualties: Int

    public init(map: Map) throws {
      name = try map.value("name")
      quantity = try map.value("quantity")
      casualties = try map.value("casualties")
    }
  }
  let forces: [Force]

  public init(map: Map) throws {
    duration = try map.value("duration")
    forces = try map.value("forces")
  }
}

public struct HistoricalEventJSON: ImmutableMappable {

  let id: String
  let name: String
  let date: Date
  var description: String?
  let verified: Bool
  var battle: BattleJSON?
  let sources: [String]

  public init(map: Map) throws {
    id = try map.value("id")
    name = try map.value("name")
    date = try map.value("date", using: DateTransform())
    description = try? map.value("description")
    verified = try map.value("verified")
    battle = try? map.value("battle")
    sources = try map.value("sources")
  }

 public mutating func mapping(map: Map) {
    id >>> map["id"]
    name >>> map["name"]
    date >>> map["date"]
    description >>> map["description"]
  }

}
