import SwiftUI

@main
struct WorkoutApp: App {
    @StateObject var legsExercisesData = LegsExercisesData()
    @StateObject var absExercisesData = AbsExercisesData()
    @StateObject var armsAbdExercisesData = ArmsAbdExercisesData()
    @StateObject var armsAddExercisesData = ArmsAddExercisesData()
    @StateObject var debugExercisesData = DebugExercisesData()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(legsExercisesData)
            .environmentObject(absExercisesData)
            .environmentObject(armsAbdExercisesData)
            .environmentObject(armsAddExercisesData)
            .environmentObject(debugExercisesData)
        }
        
    }
}


