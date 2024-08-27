import Foundation

struct ExerciseDraft : Identifiable {
    var name : String
    var bodyPart : EDraftBodyPart
    var movementType : EMovementType?
    var muscle : EMuscle?
    var singleSide : Bool = false
    var side : ESide?
    var sideSplit : Bool = false
    
    var id : String {
        let key = "uuid_\(name)"
        if let savedUUID = UserDefaults.standard.string(forKey : key) {
            return savedUUID
        } else {
            let newUUID = UUID().uuidString
            UserDefaults.standard.set(newUUID, forKey : key)
            return newUUID
        }
    }
    
}

struct Exercise : Identifiable {
    var name : String
    var movementType : EMovementType?
    var muscle : EMuscle?
    var side : ESide?
    var bodyPart : EBodyPart
    var draftId : String = ""
    
    var id = UUID()
}
