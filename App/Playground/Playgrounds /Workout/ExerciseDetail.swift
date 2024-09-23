import SwiftUI

struct ExerciseDetail: View {
    var exercise: ExerciseDraft
    
    var body: some View {
        HStack {
            Text(exercise.name.capitalized)
                .font(.title)
            VStack {
                
                
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
        ExerciseDetail(exercise: ExerciseDraft(name: "biceps dumbbell", muscles: [.high: [.abdominals]], sideType: .split))
    }
}

