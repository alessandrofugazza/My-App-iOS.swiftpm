import SwiftUI

struct ExerciseList: View {
    
    @State private var exercises = [
        ExerciseDraft(name: "sitting triceps", muscle: .tricep, sideType: .split),
        ExerciseDraft(name: "push-ups", movementType: .pushup),
        ExerciseDraft(name: "lateral deltoid", muscle: .deltoid, sideType: .split),
        ExerciseDraft(name: "reverse wrist curl", muscle: .forearmAbd, sideType: .singleFocus, sideFocus: .left),
    ]
    var body: some View {
        Text("p")
    }
}
