import Curry
import Runes

public struct MessageThreadEnvelope {
  public let participants: [User]
  public let messages: [Message]
  public let messageThread: MessageThread
}

extension MessageThreadEnvelope: Swift.Decodable {
  enum CodingKeys: String, CodingKey {
    case participants
    case messages
    case messageThread = "message_thread"
  }
}
