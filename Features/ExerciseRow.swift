//import SwiftUI
//
//struct ExerciseRow: View {
//    var exercise : Exercise
//    
//    var body: some View {
//        HStack { 
//            Text(exercise.name)
//            Spacer()
//            ForEach(exercise.bodyParts, id: \.self) { bodyPart in
//                Text(bodyPart.uppercased()).font(.caption)
//            }
//        }
//    }
//}
//
//struct ExerciseRow_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseRow(exercise: Exercise(name: "nameP", bodyParts: ["BP"]))
//    }
//}
