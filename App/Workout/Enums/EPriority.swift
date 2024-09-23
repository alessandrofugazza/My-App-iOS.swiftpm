enum EPriority: String, CaseIterable, Identifiable {
    case I = "I"
    case II = "II"
    case III = "III"
    var id : String {self.rawValue}
}

