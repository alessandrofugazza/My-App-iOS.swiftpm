import SwiftUI

struct ExerciseDetail: View {
    var exercise: ExerciseDraft
    
    var body: some View {
        HStack {
            Text(exercise.name.capitalized)
                .font(.title)
            VStack {
                
                Text(exercise.movementType?.rawValue ?? "MT")
                    .applyConditionalStyle(condition: exercise.movementType != nil)
                Text(exercise.muscle?.rawValue ?? "MF")
                    .applyConditionalStyle(condition: exercise.muscle != nil)
                Text("SS")
                    .applyConditionalStyle(condition: exercise.sideType == .split)
                Text("SF")
                    .applyConditionalStyle(condition: exercise.sideType == .singleFocus)
                
            }
        
        }
        .padding()
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail(exercise: ExerciseDraft(name: "biceps dumbbell", muscle: .bicep, sideType: .split))
    }
}

