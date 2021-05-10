import XCTest
@testable import Entity

class TrumpTests: XCTestCase {
    
    func testDebugDescription() {
        let numbers = Number.allCases
        let suits = Suit.allCases
        
        for number in numbers {
            for suit in suits {
                let trump = Trump(suit: suit, number: number)
                XCTAssertEqual(trump.debugDescription, "\(suit.mark): \(number.mark)")
            }
        }
    }
}
