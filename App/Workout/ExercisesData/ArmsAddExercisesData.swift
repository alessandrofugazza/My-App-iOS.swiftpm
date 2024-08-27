import SwiftUI

class ArmsAddExercisesData: ObservableObject {
    @Published var dArmsAddI = [
        ExerciseDraft(name: "biceps dumbbell", muscle: .bicep, sideSplit: true),
        ExerciseDraft(name: "traction", movementType: .traction, sideSplit: true),
        ExerciseDraft(name: "wrist curl (L)", muscle: .forearmAdd, singleSide: true, side: .left),
    ]
    
    @Published var dArmsAddII = [
        ExerciseDraft(name: "pecs", muscle: .pectoral, sideSplit: true),
        ExerciseDraft(name: "hammer wrist curl (L)", muscle: .forearmAdd, singleSide: true, side: .left),
    ]
    
    @Published var dArmsAddIII = [
        ExerciseDraft(name: "internal biceps dumbbell", muscle: .bicep, sideSplit: true),
        ExerciseDraft(name: "external biceps dumbbell", muscle: .bicep, sideSplit: true),
        ExerciseDraft(name: "hammer biceps dumbbell", muscle: .bicep, sideSplit: true),
        ExerciseDraft(name: "biceps barbell", muscle: .bicep),
        ExerciseDraft(name: "bucket raise", movementType: .traction, sideSplit: true),
        ExerciseDraft(name: "vertical pecs", muscle: .pectoral, sideSplit: true),
        ExerciseDraft(name: "barbell biceps", muscle: .bicep)
    ]
}

