import Foundation

struct ExerciseDraft: Identifiable {
    var name: String
    var movementType: EMovementType?
    var muscle: EMuscle?
    var singleSide: ESide?
    var sideSplit: Bool?
    var repetitions: Int = 0
    var fakeId: String {
        let key = "uuid_\(name)"
        if let savedUUID = UserDefaults.standard.string(forKey: key) {
            return savedUUID
        } else {
            let newUUID = UUID().uuidString
            UserDefaults.standard.set(newUUID, forKey: key)
            return newUUID
        }
    }
    
    var id = UUID()
}

struct Exercise: Identifiable {
    var name: String
    var movementType: EMovementType?
    var muscle: EMuscle?
    var side: ESide?
    var repetitions: Int = 0
    var fakeId: String = ""
    
    var id = UUID()
}
