// The Swift Programming Language
// https://docs.swift.org/swift-book

protocol BMRCalculator {
    /// Calculate the Basal Metabolic Rate (BMR) for a person.
    /// - Parameter person: The person for which the BMR should be calculated.
    /// - Returns: The calculated BMR (kcal/day).
    static func calculateBMR( for person: Person) -> Double
}

