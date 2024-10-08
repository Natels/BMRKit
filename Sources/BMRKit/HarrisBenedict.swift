struct HarrisBenedict: BMRCalculator {
    static func calculateBMR(for person: Person) -> Double {
        let weightFactor = person.bodyType == .masculine ? 13.7516 : 9.5634
        let heightFactor = person.bodyType == .masculine ? 5.0033 : 1.8496
        let ageFactor = person.bodyType == .masculine ? 6.7550 : 4.6756
        let genderFactor = person.bodyType == .masculine ? 66.4730 : 655.0955

        return (
            weightFactor * person.weight
            + heightFactor * person.height
            - ageFactor * Double(person.age)
            + genderFactor
        )
    }
}
