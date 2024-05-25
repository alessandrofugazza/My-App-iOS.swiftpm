//import SwiftUI
//
//struct ExerciseEditor: View {
//    @State var newExercise: Exercise = Exercise(name: "", bodyParts: [""])
//    @EnvironmentObject var data: ExerciseList 
//    @Environment(\.dismiss) var dismiss
//    var body: some View {
//            VStack(alignment: .leading) {
//                Form {
//                    Section("Name") {
//                        TextField("Name", text: $newExercise.name)
//                    }   
//                    
////                    Section("Body Part") {
////                        ForEach($newExercise.bodyParts, id: \.self) { bodyPart in
////                            TextField("Body Part", text: $newExercise.bodyParts)
////                        }
////                        
////                    }
//                    
//                    Section("Exercise Preview") {
//                        ExerciseRow(exercise: newExercise)
//                    }
//                }
//            }
//            .toolbar { 
//                ToolbarItem { 
//                    Button("Add") { 
//                        data.exercises.append(newExercise)
//                        dismiss()
//                    }
//                }
//            }
//    }
//}
//
//struct ExerciseEditor_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationStack() {
//            ExerciseEditor().environmentObject(ExerciseList())
//        }
//    }
//}
//
//
//
