import SwiftUI

class LegsExercisesData: ObservableObject {
    @Published var dLegsI = [
        ExerciseDraft(name: "calf", muscle: .calf, sideSplit: true),
        ExerciseDraft(name: "hamstrings", muscle: .hamstring),
        ExerciseDraft(name: "squat", movementType: .squat),
        ExerciseDraft(name: "deadlift", movementType: .deadlift),
    ]
    
    @Published var dLegsII = [
        
        ExerciseDraft(name: "frontal squat", movementType: .squat, sideSplit: true),
        ExerciseDraft(name: "lateral squat", movementType: .squat, sideSplit: true),
        ExerciseDraft(name: "leg raise", muscle: .thigh, sideSplit: true),
    ]
    
    @Published var dLegsIII = [
        
        ExerciseDraft(name: "internal calf", muscle: .calf, sideSplit: true),
        ExerciseDraft(name: "external calf", muscle: .calf, sideSplit: true),
    ]
}


