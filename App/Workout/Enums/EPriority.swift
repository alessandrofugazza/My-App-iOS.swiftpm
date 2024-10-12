enum EPriority: String, CaseIterable, Identifiable {
    case I = "I"
    case II = "II"
    case III = "III"
    case IV = "IV"
    var id : String {self.rawValue}
}

