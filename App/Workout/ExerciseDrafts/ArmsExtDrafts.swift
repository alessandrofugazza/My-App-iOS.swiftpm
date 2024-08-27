import SwiftUI

class ArmsExtDrafts: ObservableObject {
    @Published var armsExtDraftsI = [
        ExerciseDraft(name: "sitting triceps", bodyPart: .arm, muscle: .tricep, sideType: .split),
        ExerciseDraft(name: "push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "lateral deltoid", bodyPart: .arm, muscle: .deltoid, sideType: .split),
        ExerciseDraft(name: "reverse wrist curl", bodyPart: .arm, muscle: .forearmAbd, sideType: .singleFocus, sideFocus: .left),
    ]
    
    @Published var armsExtDraftsII = [
        ExerciseDraft(name: "overhead raise", bodyPart: .arm, movementType: .pushup, sideType: .split),
        ExerciseDraft(name: "back push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "frontal deltoid", bodyPart: .arm, muscle: .deltoid, sideType: .split),
        
        
    ]
    
    @Published var armsExtDraftsIII = [
        ExerciseDraft(name: "laying triceps", bodyPart: .arm, muscle: .tricep, sideType: .split),
        ExerciseDraft(name: "overhead hammer raise", bodyPart: .arm, movementType: .pushup, sideType: .split),
        ExerciseDraft(name: "inclined push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "reclined push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "laying barbell triceps", bodyPart: .arm, muscle: .tricep),
        
    ]
}

