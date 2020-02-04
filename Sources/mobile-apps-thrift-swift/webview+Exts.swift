/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: Epic, rhs: Epic) -> Bool {
  return
    (lhs.title == rhs.title) &&
    (lhs.body == rhs.body) &&
    (lhs.firstButton == rhs.firstButton) &&
    (lhs.secondButton == rhs.secondButton)
}

extension Epic : CustomStringConvertible {

  public var description : String {
    var desc = "Epic("
    desc += "title=\(String(describing: self.title)), "
    desc += "body=\(String(describing: self.body)), "
    desc += "firstButton=\(String(describing: self.firstButton)), "
    desc += "secondButton=\(String(describing: self.secondButton))"
    return desc
  }

}

extension Epic : Hashable {

  public var hashValue : Int {
    let prime = 31
    var result = 1
    result = prime &* result &+ (title.hashValue)
    result = prime &* result &+ (body.hashValue)
    result = prime &* result &+ (firstButton.hashValue)
    result = prime &* result &+ (secondButton?.hashValue ?? 0)
    return result
  }

}

extension Epic : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["title": 1, "body": 2, "firstButton": 3, "secondButton": 4, ]
  }

  public static var structName: String { return "Epic" }

  public static func read(from proto: TProtocol) throws -> Epic {
    _ = try proto.readStructBegin()
    var title: String!
    var body: String!
    var firstButton: String!
    var secondButton: String?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .string):           title = try String.read(from: proto)
        case (2, .string):           body = try String.read(from: proto)
        case (3, .string):           firstButton = try String.read(from: proto)
        case (4, .string):           secondButton = try String.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(title, named: "title")
    try proto.validateValue(body, named: "body")
    try proto.validateValue(firstButton, named: "firstButton")

    return Epic(title: title, body: body, firstButton: firstButton, secondButton: secondButton)
  }

}



fileprivate final class Webview_webviewThriftPackage_args {


  fileprivate init() { }
}

fileprivate func ==(lhs: Webview_webviewThriftPackage_args, rhs: Webview_webviewThriftPackage_args) -> Bool {
  return true
}

extension Webview_webviewThriftPackage_args : Hashable {

  fileprivate var hashValue : Int {
    return 31
  }

}

extension Webview_webviewThriftPackage_args : TStruct {

  fileprivate static var fieldIds: [String: Int32] {
    return [:]
  }

  fileprivate static var structName: String { return "Webview_webviewThriftPackage_args" }

  fileprivate static func read(from proto: TProtocol) throws -> Webview_webviewThriftPackage_args {
    _ = try proto.readStructBegin()

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return Webview_webviewThriftPackage_args()
  }

}



fileprivate final class Webview_webviewThriftPackage_result {

  fileprivate var success: Int32?


  fileprivate init() { }
  fileprivate init(success: Int32?) {
    self.success = success
  }

}

fileprivate func ==(lhs: Webview_webviewThriftPackage_result, rhs: Webview_webviewThriftPackage_result) -> Bool {
  return
    (lhs.success == rhs.success)
}

extension Webview_webviewThriftPackage_result : Hashable {

  fileprivate var hashValue : Int {
    let prime = 31
    var result = 1
    result = prime &* result &+ (success?.hashValue ?? 0)
    return result
  }

}

extension Webview_webviewThriftPackage_result : TStruct {

  fileprivate static var fieldIds: [String: Int32] {
    return ["success": 0, ]
  }

  fileprivate static var structName: String { return "Webview_webviewThriftPackage_result" }

  fileprivate static func read(from proto: TProtocol) throws -> Webview_webviewThriftPackage_result {
    _ = try proto.readStructBegin()
    var success: Int32?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (0, .i32):             success = try Int32.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return Webview_webviewThriftPackage_result(success: success)
  }

}



fileprivate final class Webview_insertEpics_args {

  fileprivate var epics: TList<Epic>


  fileprivate init(epics: TList<Epic>) {
    self.epics = epics
  }

}

fileprivate func ==(lhs: Webview_insertEpics_args, rhs: Webview_insertEpics_args) -> Bool {
  return
    (lhs.epics == rhs.epics)
}

extension Webview_insertEpics_args : Hashable {

  fileprivate var hashValue : Int {
    let prime = 31
    var result = 1
    result = prime &* result &+ (epics.hashValue)
    return result
  }

}

extension Webview_insertEpics_args : TStruct {

  fileprivate static var fieldIds: [String: Int32] {
    return ["epics": 1, ]
  }

  fileprivate static var structName: String { return "Webview_insertEpics_args" }

  fileprivate static func read(from proto: TProtocol) throws -> Webview_insertEpics_args {
    _ = try proto.readStructBegin()
    var epics: TList<Epic>!

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .list):            epics = try TList<Epic>.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(epics, named: "epics")

    return Webview_insertEpics_args(epics: epics)
  }

}



fileprivate final class Webview_insertEpics_result {


  fileprivate init() { }
}

fileprivate func ==(lhs: Webview_insertEpics_result, rhs: Webview_insertEpics_result) -> Bool {
  return true
}

extension Webview_insertEpics_result : Hashable {

  fileprivate var hashValue : Int {
    return 31
  }

}

extension Webview_insertEpics_result : TStruct {

  fileprivate static var fieldIds: [String: Int32] {
    return [:]
  }

  fileprivate static var structName: String { return "Webview_insertEpics_result" }

  fileprivate static func read(from proto: TProtocol) throws -> Webview_insertEpics_result {
    _ = try proto.readStructBegin()

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return Webview_insertEpics_result()
  }

}



fileprivate final class Webview_insertEpic_args {

  fileprivate var epic: Epic


  fileprivate init(epic: Epic) {
    self.epic = epic
  }

}

fileprivate func ==(lhs: Webview_insertEpic_args, rhs: Webview_insertEpic_args) -> Bool {
  return
    (lhs.epic == rhs.epic)
}

extension Webview_insertEpic_args : Hashable {

  fileprivate var hashValue : Int {
    let prime = 31
    var result = 1
    result = prime &* result &+ (epic.hashValue)
    return result
  }

}

extension Webview_insertEpic_args : TStruct {

  fileprivate static var fieldIds: [String: Int32] {
    return ["epic": 1, ]
  }

  fileprivate static var structName: String { return "Webview_insertEpic_args" }

  fileprivate static func read(from proto: TProtocol) throws -> Webview_insertEpic_args {
    _ = try proto.readStructBegin()
    var epic: Epic!

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .struct):           epic = try Epic.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(epic, named: "epic")

    return Webview_insertEpic_args(epic: epic)
  }

}



fileprivate final class Webview_insertEpic_result {


  fileprivate init() { }
}

fileprivate func ==(lhs: Webview_insertEpic_result, rhs: Webview_insertEpic_result) -> Bool {
  return true
}

extension Webview_insertEpic_result : Hashable {

  fileprivate var hashValue : Int {
    return 31
  }

}

extension Webview_insertEpic_result : TStruct {

  fileprivate static var fieldIds: [String: Int32] {
    return [:]
  }

  fileprivate static var structName: String { return "Webview_insertEpic_result" }

  fileprivate static func read(from proto: TProtocol) throws -> Webview_insertEpic_result {
    _ = try proto.readStructBegin()

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return Webview_insertEpic_result()
  }

}



extension WebviewClient : Webview {

  private func send_webviewThriftPackage() throws {
    try outProtocol.writeMessageBegin(name: "webviewThriftPackage", type: .call, sequenceID: 0)
    let args = Webview_webviewThriftPackage_args()
    try args.write(to: outProtocol)
    try outProtocol.writeMessageEnd()
  }

  private func recv_webviewThriftPackage() throws -> Int32 {
    try inProtocol.readResultMessageBegin() 
    let result = try Webview_webviewThriftPackage_result.read(from: inProtocol)
    try inProtocol.readMessageEnd()

    if let success = result.success {
      return success
    }
    throw TApplicationError(error: .missingResult(methodName: "webviewThriftPackage"))
  }

  public func webviewThriftPackage() throws -> Int32 {
    try send_webviewThriftPackage()
    try outProtocol.transport.flush()
    return try recv_webviewThriftPackage()
  }

  private func send_insertEpics(epics: TList<Epic>) throws {
    try outProtocol.writeMessageBegin(name: "insertEpics", type: .call, sequenceID: 0)
    let args = Webview_insertEpics_args(epics: epics)
    try args.write(to: outProtocol)
    try outProtocol.writeMessageEnd()
  }

  private func recv_insertEpics() throws {
    try inProtocol.readResultMessageBegin() 
    _ = try Webview_insertEpics_result.read(from: inProtocol)
    try inProtocol.readMessageEnd()

  }

  public func insertEpics(epics: TList<Epic>) throws {
    try send_insertEpics(epics: epics)
    try outProtocol.transport.flush()
    try recv_insertEpics()
  }

  private func send_insertEpic(epic: Epic) throws {
    try outProtocol.writeMessageBegin(name: "insertEpic", type: .call, sequenceID: 0)
    let args = Webview_insertEpic_args(epic: epic)
    try args.write(to: outProtocol)
    try outProtocol.writeMessageEnd()
  }

  private func recv_insertEpic() throws {
    try inProtocol.readResultMessageBegin() 
    _ = try Webview_insertEpic_result.read(from: inProtocol)
    try inProtocol.readMessageEnd()

  }

  public func insertEpic(epic: Epic) throws {
    try send_insertEpic(epic: epic)
    try outProtocol.transport.flush()
    try recv_insertEpic()
  }

}

extension WebviewProcessor : TProcessor {

  static let processorHandlers: ProcessorHandlerDictionary = {

    var processorHandlers = ProcessorHandlerDictionary()

    processorHandlers["webviewThriftPackage"] = { sequenceID, inProtocol, outProtocol, handler in

      let args = try Webview_webviewThriftPackage_args.read(from: inProtocol)

      try inProtocol.readMessageEnd()

      var result = Webview_webviewThriftPackage_result()
      do {
        result.success = try handler.webviewThriftPackage()
      }
      catch let error { throw error }

      try outProtocol.writeMessageBegin(name: "webviewThriftPackage", type: .reply, sequenceID: sequenceID)
      try result.write(to: outProtocol)
      try outProtocol.writeMessageEnd()
    }
    processorHandlers["insertEpics"] = { sequenceID, inProtocol, outProtocol, handler in

      let args = try Webview_insertEpics_args.read(from: inProtocol)

      try inProtocol.readMessageEnd()

      var result = Webview_insertEpics_result()
      do {
        try handler.insertEpics(epics: args.epics)
      }
      catch let error { throw error }

      try outProtocol.writeMessageBegin(name: "insertEpics", type: .reply, sequenceID: sequenceID)
      try result.write(to: outProtocol)
      try outProtocol.writeMessageEnd()
    }
    processorHandlers["insertEpic"] = { sequenceID, inProtocol, outProtocol, handler in

      let args = try Webview_insertEpic_args.read(from: inProtocol)

      try inProtocol.readMessageEnd()

      var result = Webview_insertEpic_result()
      do {
        try handler.insertEpic(epic: args.epic)
      }
      catch let error { throw error }

      try outProtocol.writeMessageBegin(name: "insertEpic", type: .reply, sequenceID: sequenceID)
      try result.write(to: outProtocol)
      try outProtocol.writeMessageEnd()
    }
    return processorHandlers
  }()

  public func process(on inProtocol: TProtocol, outProtocol: TProtocol) throws {

    let (messageName, _, sequenceID) = try inProtocol.readMessageBegin()

    if let processorHandler = WebviewProcessor.processorHandlers[messageName] {
      do {
        try processorHandler(sequenceID, inProtocol, outProtocol, service)
      }
      catch let error as TApplicationError {
        try outProtocol.writeException(messageName: messageName, sequenceID: sequenceID, ex: error)
      }
    }
    else {
      try inProtocol.skip(type: .struct)
      try inProtocol.readMessageEnd()
      let ex = TApplicationError(error: .unknownMethod(methodName: messageName))
      try outProtocol.writeException(messageName: messageName, sequenceID: sequenceID, ex: ex)
    }
  }
}

