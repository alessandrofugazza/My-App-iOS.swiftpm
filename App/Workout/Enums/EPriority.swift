enum EPriority: String, CaseIterable, Identifiable {
    case III = "I"
    case II = "II"
    case I = "III"
    var id : String {self.rawValue}
}

