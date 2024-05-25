//import SwiftUI
//
//struct ExerciseDetail: View {
//    //    let exercise : Exercise
//    @State var exercise : Exercise
//    @State var exerciseName = ""
//    @State var exerciseBodyPart = ""
//    //    @State var color = Color.white
//    //    @State var shadowRadius : CGFloat = 0.5
//    //    @State var angle = Angle(degrees: 0)
//    @Environment(\.dismiss) var dismiss
//    var body: some View {
//        //        VStack {
//        //            Text(exercise.bodyPart)
//        //                .colorMultiply(color)
//        //                .shadow(color: color, radius: shadowRadius * 40)
//        //                .rotation3DEffect(Angle(degrees: 0), axis: (x: 5, y: 2, z: 1))
//        //        }
//        VStack(alignment: .leading) {
//            Form {
//                Section("Name") {
//                    TextField("Name", text: $exerciseName)
//                }   
//                
//                Section("Body Part") {
//                    TextField("Body Part", text: $exercise.bodyPart)
//                }
//                
//                Section("Exercise Preview") {
//                    ExerciseRow(exercise: exercise)
//                }
//            }
//        }
//        .onAppear(perform: {
//            exerciseName = exercise.name
//            exerciseBodyPart = exercise.bodyPart
//        }
//                  
//        )
//        .toolbar { 
//            ToolbarItem { 
//                Button("Save") { 
//                    //                    exercise.name=exerciseName
//                    //                    exercise.bodyPart=exerciseBodyPart
//                    dismiss()
//                }
//            }
//        }
//    }
//}
//
//struct ExerciseDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseDetail(exercise: ExerciseList().exercises.randomElement() ?? Exercise(name: "nameP", bodyPart: "BO"))
//    }
//}
