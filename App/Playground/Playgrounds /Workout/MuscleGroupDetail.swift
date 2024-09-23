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
                    :
                ]
        )
    }
}
