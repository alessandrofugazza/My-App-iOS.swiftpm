import SwiftUI

@main
struct MyAppApp: App {
    @StateObject var exerciseDrafts = ExerciseDrafts()
    @StateObject var debugExercisesData = DebugExercisesData()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(exerciseDrafts)
            .environmentObject(debugExercisesData)
        }
        
    }
}


