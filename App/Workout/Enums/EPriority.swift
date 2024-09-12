enum EPriority: String, CaseIterable, Identifiable {
    case I = "I"
    case II = "II"
    
    var id : String {self.rawValue}
}

