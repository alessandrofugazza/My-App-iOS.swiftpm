import SwiftUI

struct ExerciseDetail: View {
    var exercise: ExerciseDraft
    
    var body: some View {
        VStack {
            Text(exercise.name.capitalized)
            Text(exercise.movementType?.rawValue ?? "No movement type")
                .foregroundColor((exercise.movementType != nil) ? .primary : .secondary)
                .opacity((exercise.movementType != nil) ? 1.0 : 0.5)
            Text(exercise.muscle?.rawValue ?? "No muscle focus")
                .foregroundColor((exercise.muscle != nil) ? .primary : .secondary)
                .opacity((exercise.muscle != nil) ? 1.0 : 0.5)
            Text("SSp")
                .foregroundColor(exercise.sideSplit ? .primary : .secondary)
                .opacity(exercise.sideSplit ? 1.0 : 0.5)
            Text("SSi")
                .foregroundColor(exercise.singleSide ? .primary : .secondary)
                .opacity(exercise.singleSide ? 1.0 : 0.5)
        }
        .padding()
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail(exercise: ExerciseDraft(name: "biceps dumbbell", muscle: .bicep, sideSplit: true))
    }
}

