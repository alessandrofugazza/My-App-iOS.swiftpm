import SwiftUI

class ArmsAbdExercisesData: ObservableObject {
    @Published var dArmsAbdI = [
        ExerciseDraft(name: "sitting triceps", muscle: .tricep, sideSplit: true),
        ExerciseDraft(name: "push-ups", movementType: .pushup),
        ExerciseDraft(name: "lateral deltoid", muscle: .deltoid, sideSplit: true),
        ExerciseDraft(name: "reverse wrist curl (L)", muscle: .forearmAbd),
    ]
    
    @Published var dArmsAbdII = [
        ExerciseDraft(name: "overhead raise", movementType: .pushup, sideSplit: true),
        ExerciseDraft(name: "back push-ups", movementType: .pushup),
        ExerciseDraft(name: "frontal deltoid", muscle: .deltoid, sideSplit: true),
        
        
    ]
    
    @Published var dArmsAbdIII = [
        ExerciseDraft(name: "laying triceps", muscle: .tricep, sideSplit: true),
        ExerciseDraft(name: "overhead hammer raise", movementType: .pushup, sideSplit: true),
        ExerciseDraft(name: "inclined push-ups", movementType: .pushup),
        ExerciseDraft(name: "reclined push-ups", movementType: .pushup),
        ExerciseDraft(name: "laying barbell triceps", muscle: .tricep),
        
    ]
}

