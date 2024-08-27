import SwiftUI

struct ExerciseList: View {
    
    @State private var exercises = [
        ExerciseDraft(name: "sitting triceps", muscle: .tricep, sideSplit: true),
        ExerciseDraft(name: "push-ups", movementType: .pushup),
        ExerciseDraft(name: "lateral deltoid", muscle: .deltoid, sideSplit: true),
        ExerciseDraft(name: "reverse wrist curl (L)", muscle: .forearmAbd, singleSide: true, side: .left),
    ]
    var body: some View {
        Text("p")
    }
}
