import Foundation

public struct Trump {
  public let suit: Suit
  public let number: Number
  
  public init(suit: Suit, number: Number) {
    self.suit = suit
    self.number = number
  }
}

extension Trump: Comparable {
  public static func < (lhs: Trump, rhs: Trump) -> Bool {
    return lhs.number <= rhs.number
      && lhs.suit < rhs.suit
  }
}

extension Trump: CustomDebugStringConvertible {
  
  public var debugDescription: String {
    return "\(suit.mark): \(number.mark)"
  }
}

extension Trump: CaseIterable {
  public typealias AllCases = [Trump]
  
  public static var allCases: [Trump] {
    let numbers = Number.allCases
    let suits = Suit.allCases
    var trumps = [Trump]()
    for suit in suits {
      for number in numbers {
        trumps.append(Trump(suit: suit, number: number))
      }
    }
    return trumps
  }
}

extension Trump: Equatable { }

extension Trump: Hashable { }
