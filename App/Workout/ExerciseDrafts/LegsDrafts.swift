import SwiftUI

class LegsDrafts: ObservableObject {
    @Published var legsDraftsI = [
        ExerciseDraft(name: "calf", bodyPart: .leg, muscle: .calf, sideType: .split),
        ExerciseDraft(name: "hamstrings", bodyPart: .leg, muscle: .hamstring),
        ExerciseDraft(name: "squat", bodyPart: .leg, movementType: .squat),
        ExerciseDraft(name: "deadlift", bodyPart: .leg, movementType: .deadlift),
    ]
    
    @Published var legsDraftsII = [
        
        ExerciseDraft(name: "frontal squat", bodyPart: .leg, movementType: .squat, sideType: .split),
        ExerciseDraft(name: "lateral squat", bodyPart: .leg, movementType: .squat, sideType: .split),
        ExerciseDraft(name: "leg raise", bodyPart: .leg, muscle: .thigh, sideType: .split),
    ]
    
    @Published var legsDraftsIII = [
        
        ExerciseDraft(name: "internal calf", bodyPart: .leg, muscle: .calf, sideType: .split),
        ExerciseDraft(name: "external calf", bodyPart: .leg, muscle: .calf, sideType: .split),
    ]
}


