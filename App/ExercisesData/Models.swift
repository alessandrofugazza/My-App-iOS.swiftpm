import Foundation

struct ED: Identifiable {
    var n: String
    var t: String?
    var bp: String?
    var rl: Bool?
    
    var id = UUID()
}

struct Exercise: Identifiable {
    var name: String
    var type: String?
    var bodyPart: String?
    var side: String?
    
    var id = UUID()
}
