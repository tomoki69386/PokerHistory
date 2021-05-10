import XCTest
@testable import Entity

class SuitTests: XCTestCase {
    func testSpades() {
        XCTAssertEqual(Suit.spade < Suit.heart, true)
        XCTAssertEqual(Suit.spade < Suit.diamond, true)
        XCTAssertEqual(Suit.spade < Suit.club, true)
        
        XCTAssertEqual(Suit.spade > Suit.heart, false)
        XCTAssertEqual(Suit.spade > Suit.diamond, false)
        XCTAssertEqual(Suit.spade > Suit.club, false)
    }
    
    func testHearts() {
        XCTAssertEqual(Suit.heart < Suit.spade, false)
        XCTAssertEqual(Suit.heart < Suit.diamond, true)
        XCTAssertEqual(Suit.heart < Suit.club, true)
        
        XCTAssertEqual(Suit.heart > Suit.spade, true)
        XCTAssertEqual(Suit.heart > Suit.diamond, false)
        XCTAssertEqual(Suit.heart > Suit.club, false)
    }
    
    func testDiamonds() {
        XCTAssertEqual(Suit.diamond < Suit.spade, false)
        XCTAssertEqual(Suit.diamond < Suit.heart, false)
        XCTAssertEqual(Suit.diamond < Suit.club, true)
        
        XCTAssertEqual(Suit.diamond > Suit.spade, true)
        XCTAssertEqual(Suit.diamond > Suit.heart, true)
        XCTAssertEqual(Suit.diamond > Suit.club, false)
    }
    
    func testClubs() {
        XCTAssertEqual(Suit.club < Suit.spade, false)
        XCTAssertEqual(Suit.club < Suit.heart, false)
        XCTAssertEqual(Suit.club < Suit.diamond, false)
        
        XCTAssertEqual(Suit.club > Suit.spade, true)
        XCTAssertEqual(Suit.club > Suit.heart, true)
        XCTAssertEqual(Suit.club > Suit.diamond, true)
    }
    
    func testMark() {
        XCTAssertEqual(Suit.allCases.map { $0.mark }, ["♠", "♥", "♦", "♣"])
    }
    
    func testSorted() {
        XCTAssertEqual(Suit.allCases.shuffled().sorted(by: <), [.spade, .heart, .diamond, .club])
        XCTAssertEqual(Suit.allCases.shuffled().sorted(by: >), [.club, .diamond, .heart, .spade])
    }
}
