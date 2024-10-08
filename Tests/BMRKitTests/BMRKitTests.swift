import Testing
@testable import BMRKit

struct BMRCalculatorTest {
    let person: Person
    let expectedBMR: Double
}

@Suite("Harris-Benedict formula") final class BMRKitTests {
    @Test("can produce a basal metabolic rate") func testHarrisBenedictCalculator() throws {
        let tests: [BMRCalculatorTest] = [
            BMRCalculatorTest(
                person: .init(bodyType: .masculine, weight: 70.0, height: 180.0, age: 25),
                expectedBMR: 1760.804
            ),
            BMRCalculatorTest(
                person: .init(bodyType: .masculine, weight: 112.0, height: 180.0, age: 35),
                expectedBMR: 2270.8212
            ),
            BMRCalculatorTest(
                person: .init(bodyType: .feminine, weight: 60.0, height: 170.0, age: 25),
                expectedBMR: 1426.4415
            )
        ]

        for test in tests {
            let bmr = HarrisBenedict.calculateBMR(for: test.person)
            #expect(bmr == test.expectedBMR)
        }
    }
}
