import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { 
                    Label("Home", systemImage: "house") 
                }
            WorkoutView()
                .tabItem { 
                    Label("Workout", systemImage: "dumbbell") 
                }
            ExerciseListsView()
                .tabItem { 
                    Label("Exercise List", systemImage: "list.dash") 
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
