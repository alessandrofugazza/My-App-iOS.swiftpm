import Foundation

struct ExerciseDraft: Identifiable {
    var name: String
    var movementType: EMovementType?
    var muscle: EMuscle?
    var singleSide: ESide?
    var sideSplit: Bool?
    
    var id = UUID()
}

struct Exercise: Identifiable {
    var name: String
    var movementType: EMovementType?
    var muscle: EMuscle?
    var side: ESide?
    
    var id = UUID()
}
