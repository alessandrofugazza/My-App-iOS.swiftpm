import SwiftUI

class ArmsExtDrafts: ObservableObject {
    @Published var armsExtDraftsI = [
        ExerciseDraft(name: "sitting triceps", bodyPart: .arm, muscle: .tricep, sideSplit: true),
        ExerciseDraft(name: "push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "lateral deltoid", bodyPart: .arm, muscle: .deltoid, sideSplit: true),
        ExerciseDraft(name: "reverse wrist curl (L)", bodyPart: .arm, muscle: .forearmAbd, singleSide: true, side: .left),
    ]
    
    @Published var armsExtDraftsII = [
        ExerciseDraft(name: "overhead raise", bodyPart: .arm, movementType: .pushup, sideSplit: true),
        ExerciseDraft(name: "back push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "frontal deltoid", bodyPart: .arm, muscle: .deltoid, sideSplit: true),
        
        
    ]
    
    @Published var armsExtDraftsIII = [
        ExerciseDraft(name: "laying triceps", bodyPart: .arm, muscle: .tricep, sideSplit: true),
        ExerciseDraft(name: "overhead hammer raise", bodyPart: .arm, movementType: .pushup, sideSplit: true),
        ExerciseDraft(name: "inclined push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "reclined push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "laying barbell triceps", bodyPart: .arm, muscle: .tricep),
        
    ]
}

