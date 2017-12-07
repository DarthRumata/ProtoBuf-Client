// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ProtoBuf-Client/Resources/HistoricalEvent.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct HistoricalEvent: SwiftProtobuf.Message {
  public static let protoMessageName: String = "HistoricalEvent"

  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  public var date: Int64 {
    get {return _storage._date}
    set {_uniqueStorage()._date = newValue}
  }

  public var description_p: String {
    get {return _storage._description_p}
    set {_uniqueStorage()._description_p = newValue}
  }

  public var verified: Bool {
    get {return _storage._verified}
    set {_uniqueStorage()._verified = newValue}
  }

  public var battle: Battle {
    get {return _storage._battle ?? Battle()}
    set {_uniqueStorage()._battle = newValue}
  }
  /// Returns true if `battle` has been explicitly set.
  public var hasBattle: Bool {return _storage._battle != nil}
  /// Clears the value of `battle`. Subsequent reads from it will return its default value.
  public mutating func clearBattle() {_storage._battle = nil}

  public var sources: [String] {
    get {return _storage._sources}
    set {_uniqueStorage()._sources = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._id)
        case 2: try decoder.decodeSingularStringField(value: &_storage._name)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._date)
        case 4: try decoder.decodeSingularStringField(value: &_storage._description_p)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._verified)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._battle)
        case 7: try decoder.decodeRepeatedStringField(value: &_storage._sources)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 2)
      }
      if _storage._date != 0 {
        try visitor.visitSingularInt64Field(value: _storage._date, fieldNumber: 3)
      }
      if !_storage._description_p.isEmpty {
        try visitor.visitSingularStringField(value: _storage._description_p, fieldNumber: 4)
      }
      if _storage._verified != false {
        try visitor.visitSingularBoolField(value: _storage._verified, fieldNumber: 5)
      }
      if let v = _storage._battle {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if !_storage._sources.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._sources, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct HistoricalEvents: SwiftProtobuf.Message {
  public static let protoMessageName: String = "HistoricalEvents"

  public var events: [HistoricalEvent] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.events)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.events.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.events, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension HistoricalEvent: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "date"),
    4: .same(proto: "description"),
    5: .same(proto: "verified"),
    6: .same(proto: "battle"),
    7: .same(proto: "sources"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _name: String = String()
    var _date: Int64 = 0
    var _description_p: String = String()
    var _verified: Bool = false
    var _battle: Battle? = nil
    var _sources: [String] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _name = source._name
      _date = source._date
      _description_p = source._description_p
      _verified = source._verified
      _battle = source._battle
      _sources = source._sources
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: HistoricalEvent) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._id != other_storage._id {return false}
        if _storage._name != other_storage._name {return false}
        if _storage._date != other_storage._date {return false}
        if _storage._description_p != other_storage._description_p {return false}
        if _storage._verified != other_storage._verified {return false}
        if _storage._battle != other_storage._battle {return false}
        if _storage._sources != other_storage._sources {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension HistoricalEvents: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "events"),
  ]

  public func _protobuf_generated_isEqualTo(other: HistoricalEvents) -> Bool {
    if self.events != other.events {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
