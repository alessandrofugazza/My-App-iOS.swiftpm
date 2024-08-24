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
            MindSourcesView()
                .tabItem { 
                    Label("Mind", systemImage: "brain.head.profile") 
                }
            PracticalSourcesView()
                .tabItem { 
                    Label("Practical", systemImage: "book.and.wrench") 
                }
            PlaygroundView()
                .tabItem { 
                    Label("Playground", systemImage: "testtube.2") 
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
