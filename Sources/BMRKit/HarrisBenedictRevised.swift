struct HarrisBenedictRevised: BMRCalculator {
    static func calculateBMR(for person: Person) -> Double {
        let weightFactor = person.bodyType == .masculine ? 13.397 : 9.247
        let heightFactor = person.bodyType == .masculine ? 4.799 : 3.098
        let ageFactor = person.bodyType == .masculine ? 5.677 : 4.330
        let genderFactor = person.bodyType == .masculine ? 88.362 : 447.593
        
        return (
            weightFactor * person.weight 
            + heightFactor * person.height 
            - ageFactor * Double(person.age) 
            + genderFactor
        )
    }
}
