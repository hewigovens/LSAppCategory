@testable import LSAppCategory
import Testing
import SwiftUI

@Test func TestAllCases() async throws {
    let allCases = AppCategory.allCases

    #expect(allCases.count > 20)

    for category in allCases {
        print("\(category.emoji)\(category.description): \(category.rawValue)")

        #expect(Image(systemName: category.sfSymbol) != nil)
    }
}
