import SwiftUI

class ArmsFlexDrafts: ObservableObject {
    @Published var armsFlexDraftsI = [
        ExerciseDraft(name: "biceps dumbbell", bodyPart: .arm, muscle: .bicep, sideSplit: true),
        ExerciseDraft(name: "traction", bodyPart: .arm, movementType: .traction, sideSplit: true),
        ExerciseDraft(name: "wrist curl (L)", bodyPart: .arm, muscle: .forearmAdd, singleSide: true, side: .left),
    ]
    
    @Published var armsFlexDraftsII = [
        ExerciseDraft(name: "pecs", bodyPart: .arm, muscle: .pectoral, sideSplit: true),
        ExerciseDraft(name: "hammer wrist curl (L)", bodyPart: .arm, muscle: .forearmAdd, singleSide: true, side: .left),
    ]
    
    @Published var armsFlexDraftsIII = [
        ExerciseDraft(name: "internal biceps dumbbell", bodyPart: .arm, muscle: .bicep, sideSplit: true),
        ExerciseDraft(name: "external biceps dumbbell", bodyPart: .arm, muscle: .bicep, sideSplit: true),
        ExerciseDraft(name: "hammer biceps dumbbell", bodyPart: .arm, muscle: .bicep, sideSplit: true),
        ExerciseDraft(name: "biceps barbell", bodyPart: .arm, muscle: .bicep),
        ExerciseDraft(name: "bucket raise", bodyPart: .arm, movementType: .traction, sideSplit: true),
        ExerciseDraft(name: "vertical pecs", bodyPart: .arm, muscle: .pectoral, sideSplit: true),
        ExerciseDraft(name: "barbell biceps", bodyPart: .arm, muscle: .bicep)
    ]
}

