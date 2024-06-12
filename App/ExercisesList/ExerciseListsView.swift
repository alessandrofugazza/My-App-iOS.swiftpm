import SwiftUI

struct ExerciseListsView: View {
    let columnLayout = [GridItem(.adaptive(minimum: 300, maximum: 500))]
    
    let muscleGroups: [String] = ["Legs", "Abs", "Arms Abduction", "Arms Adduction"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(muscleGroups.indices, id: \.self) { index in
                        NavigationLink(destination: ExerciseListView(muscleGroup: muscleGroups[index])) {
                            RoundedRectangle(cornerRadius: 4.0)
                                .aspectRatio(1.0, contentMode: .fit)
                                .overlay(
                                    Text(muscleGroups[index])
                                        .foregroundColor(.black)
                                        .font(.system(size: 30))
                                )
                        }
                        .buttonStyle(PlainButtonStyle()) // Use PlainButtonStyle to avoid default button behavior
                    }
                }
            }
            .padding()
            .navigationBarTitle("Muscle Groups")
        }
        
    }
    
}

struct ExerciseListView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseListsView()
    }
}

