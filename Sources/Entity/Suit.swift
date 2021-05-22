import Foundation

public enum Suit {
  case spade
  case heart
  case diamond
  case club

  public var mark: String {
    switch self {
    case .spade:
      return "♠"
    case .heart:
      return "♥"
    case .diamond:
      return "♦"
    case .club:
      return "♣"
    }
  }
}

extension Suit: Comparable {}

extension Suit: CaseIterable {}

extension Suit: Equatable {}

extension Suit: Hashable {}
