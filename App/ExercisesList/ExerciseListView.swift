import SwiftUI

struct ExerciseListView: View {
    let muscleGroup: String
    
    var body: some View {
        // Placeholder for actual exercise list
        Text("Exercises for \(muscleGroup)")
            .font(.title)
            .navigationBarTitle(Text(muscleGroup), displayMode: .inline)
    }
}
