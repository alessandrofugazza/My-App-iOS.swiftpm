import SwiftUI

struct ExerciseList: View {
    
    @State private var exercises = [
        ExerciseDraft(name: "sitting triceps", bodyPart: .arm, muscle: .tricep, sideType: .split),
        ExerciseDraft(name: "push-ups", bodyPart: .arm, movementType: .pushup),
        ExerciseDraft(name: "lateral deltoid", bodyPart: .arm, muscle: .deltoid, sideType: .split),
        ExerciseDraft(name: "reverse wrist curl", bodyPart: .arm, muscle: .forearmAbd, sideType: .singleFocus, sideFocus: .left),
    ]
    var body: some View {
        Text("p")
    }
}
