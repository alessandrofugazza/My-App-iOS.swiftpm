//import SwiftUI
//
//struct ExerciseListView: View {
//    @EnvironmentObject var data : ExerciseList
//    var body: some View {
//        List{
//            ForEach(data.exercises) { exercise in 
//                NavigationLink {
//                    ExerciseDetail(exercise: exercise)
//                        .navigationTitle(exercise.name)
//                } label: {
//                    ExerciseRow(exercise: exercise)
//                }
//
//                
//            }
//            .onDelete { indexSet in 
//                data.exercises.remove(atOffsets: indexSet)
//            }
//        }
//        .toolbar { 
//            ToolbarItem { 
//                NavigationLink("Add") { 
//                    ExerciseEditor()
//                        .navigationTitle("Add exercise")
//                }
//            }
//        }
//    }
//}
//
//struct ExerciseListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseListView()
//    }
//}
