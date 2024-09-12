import SwiftUI

struct MuscleGroupDetail: View {
    @State private var isAddingExercise = false
    var muscleGroupExercises: [EPriority: [ExerciseDraft]]
    
    var body: some View {
        VStack {
            
            ForEach(EPriority.allCases) { priority in
                Text(priority.rawValue)
                    .font(.title)
                if let exercises = muscleGroupExercises[priority] {
                    List {
                        ForEach(exercises) { exercise in
                            Text(exercise.name)
                        }
                    }
                }
            }
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isAddingExercise = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
//        .sheet(isPresented: $isAddingExercise, onDismiss: addExercise) {
//            SymbolPicker(symbol: $selectedSymbol)
//        }
    }
}

struct MuscleGroupDetail_Previews: PreviewProvider {
    static var previews: some View {
        MuscleGroupDetail(
            muscleGroupExercises: 
                [
                    .I: [
                        ExerciseDraft(name: "sitting triceps", muscle: .tricep, sideType: .split),
                        ExerciseDraft(name: "push-ups", movementType: .pushup),
                        ExerciseDraft(name: "lateral deltoid", muscle: .deltoid, sideType: .split),
                        ExerciseDraft(name: "reverse wrist curl", muscle: .forearmAbd, sideType: .singleFocus, sideFocus: .left),
                    ],
                    .II: [
                        ExerciseDraft(name: "overhead raise", movementType: .pushup, sideType: .split),
                        ExerciseDraft(name: "back push-ups", movementType: .pushup),
                        ExerciseDraft(name: "frontal deltoid", muscle: .deltoid, sideType: .split),
                    ],
                ]
        )
    }
}
