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
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
