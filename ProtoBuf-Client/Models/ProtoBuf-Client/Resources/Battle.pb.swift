// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ProtoBuf-Client/Resources/Battle.proto
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

public struct Battle: SwiftProtobuf.Message {
  public static let protoMessageName: String = "Battle"

  public var duration: UInt32 = 0

  public var forces: [Battle.Force] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Force: SwiftProtobuf.Message {
    public static let protoMessageName: String = Battle.protoMessageName + ".Force"

    public var name: String = String()

    public var quantity: Int64 = 0

    public var casualties: Int64 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &self.name)
        case 2: try decoder.decodeSingularInt64Field(value: &self.quantity)
        case 3: try decoder.decodeSingularInt64Field(value: &self.casualties)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.name.isEmpty {
        try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
      }
      if self.quantity != 0 {
        try visitor.visitSingularInt64Field(value: self.quantity, fieldNumber: 2)
      }
      if self.casualties != 0 {
        try visitor.visitSingularInt64Field(value: self.casualties, fieldNumber: 3)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.duration)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.forces)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.duration != 0 {
      try visitor.visitSingularUInt32Field(value: self.duration, fieldNumber: 1)
    }
    if !self.forces.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.forces, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Battle: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "duration"),
    2: .same(proto: "forces"),
  ]

  public func _protobuf_generated_isEqualTo(other: Battle) -> Bool {
    if self.duration != other.duration {return false}
    if self.forces != other.forces {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Battle.Force: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "quantity"),
    3: .same(proto: "casualties"),
  ]

  public func _protobuf_generated_isEqualTo(other: Battle.Force) -> Bool {
    if self.name != other.name {return false}
    if self.quantity != other.quantity {return false}
    if self.casualties != other.casualties {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
