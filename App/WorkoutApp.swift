import SwiftUI

@main
struct WorkoutApp: App {
    @StateObject var exercisesData = Exercises()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(exercisesData)
        }
        
    }
}


