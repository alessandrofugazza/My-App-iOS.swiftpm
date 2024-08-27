import Foundation

struct ExerciseDraft : Identifiable {
    var name : String
    var bodyPart : EBodyPart
    var movementType : EMovementType?
    var muscle : EMuscle?
    
    var sideType : ESideType = .both
    var sideFocus : ESide?
    
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
    var name : String = ""
    var bodyPart : EBodyPart = .notSet
    var movementType : EMovementType?
    var muscle : EMuscle?
    var side : ESide?
    var draftId : String = ""
    
    var id = UUID()
}
