import SwiftUI

class ArmsFlexDrafts: ObservableObject {
    @Published var armsFlexDraftsI = [
        ExerciseDraft(name: "biceps dumbbell", bodyPart: .arm, muscle: .bicep, sideType: .split),
        ExerciseDraft(name: "traction", bodyPart: .arm, movementType: .traction, sideType: .split),
        ExerciseDraft(name: "wrist curl", bodyPart: .arm, muscle: .forearmAdd, sideType: .singleFocus, sideFocus: .left),
    ]
    
    @Published var armsFlexDraftsII = [
        ExerciseDraft(name: "pecs", bodyPart: .arm, muscle: .pectoral, sideType: .split),
        ExerciseDraft(name: "hammer wrist curl", bodyPart: .arm, muscle: .forearmAdd, sideType: .singleFocus, sideFocus: .left),
    ]
    
    @Published var armsFlexDraftsIII = [
        ExerciseDraft(name: "internal biceps dumbbell", bodyPart: .arm, muscle: .bicep, sideType: .split),
        ExerciseDraft(name: "external biceps dumbbell", bodyPart: .arm, muscle: .bicep, sideType: .split),
        ExerciseDraft(name: "hammer biceps dumbbell", bodyPart: .arm, muscle: .bicep, sideType: .split),
        ExerciseDraft(name: "biceps barbell", bodyPart: .arm, muscle: .bicep),
        ExerciseDraft(name: "bucket raise", bodyPart: .arm, movementType: .traction, sideType: .split),
        ExerciseDraft(name: "vertical pecs", bodyPart: .arm, muscle: .pectoral, sideType: .split),
        ExerciseDraft(name: "barbell biceps", bodyPart: .arm, muscle: .bicep)
    ]
}

