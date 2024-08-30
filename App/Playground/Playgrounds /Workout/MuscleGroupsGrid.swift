import SwiftUI

struct MuscleGroupsGrid: View {
    @EnvironmentObject var exerciseDrafts: ExerciseDrafts
    
    private static let initialColumns = 2
    @State private var selectedSymbol: Symbol?
    @State private var numColumns = initialColumns
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: initialColumns)
    
    @State private var muscleGroups = [
        WorkoutGridItem(muscleGroup: .armsExt, color: .pink),
        WorkoutGridItem(muscleGroup: .armsFlex, color: .purple),
        WorkoutGridItem(muscleGroup: .abs, color: .green),
        WorkoutGridItem(muscleGroup: .legs, color: .blue),
    ]
    
    var body: some View {
        VStack {

            
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(muscleGroups) { muscleGroup in
                        if let muscleGroupExercises = exerciseDrafts.exerciseDrafts[muscleGroup.muscleGroup] {
                            NavigationLink {
                                
                                MuscleGroupDetail(muscleGroupExercises: muscleGroupExercises)
                                
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(muscleGroup.color)
                                        .aspectRatio(1.0, contentMode: .fit)
                                    
                                    Text(muscleGroup.muscleGroup.rawValue)
                                        .font(.largeTitle)
                                        .foregroundColor(.white)
                                }
                                .padding()
                            }
                        }

                        
                    }
                }
            }
        }
    }
    
//    func addSymbol() {
//        guard let name = selectedSymbol else { return }
//        withAnimation {
//            symbols.insert(name, at: 0)
//        }
//    }
//    
//    func remove(symbol: Symbol) {
//        guard let index = symbols.firstIndex(of: symbol) else { return }
//        withAnimation {
//            _ = symbols.remove(at: index)
//        }
//    }
}

extension MuscleGroupsGrid {
    var columnsText: String {
        numColumns > 1 ? "\(numColumns) Columns" : "1 Column"
    }
}

struct MuscleGroupsGrid_Previews : PreviewProvider {
    static var previews : some View {
        MuscleGroupsGrid()
    }
}
