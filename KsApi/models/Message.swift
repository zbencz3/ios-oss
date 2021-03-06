import Curry
import Foundation
import Runes

public struct Message {
  public let body: String
  public let createdAt: TimeInterval
  public let id: Int
  public let recipient: User
  public let sender: User
}

extension Message: Swift.Decodable {
  enum CodingKeys: String, CodingKey {
    case body
    case createdAt = "created_at"
    case id
    case recipient
    case sender
  }
}
