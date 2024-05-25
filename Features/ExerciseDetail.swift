//import SwiftUI
//
//struct ExerciseDetail: View {
//    let exercise : Exercise
//    var body: some View {
//        VStack {
//            Text(exercise.name)
//            ForEach(exercise.bodyParts, id: \.self) { bodyPart in
//                Text(bodyPart)
//            }
//        }.padding()
//    }
//}
//
//struct ExerciseDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseDetail(exercise: ExerciseList().exercises.randomElement() ?? Exercise(name: "nameP", bodyParts: ["BO"]))
//    }
//}
