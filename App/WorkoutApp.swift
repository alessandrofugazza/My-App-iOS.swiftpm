import SwiftUI

@main
struct WorkoutApp: App {
    @StateObject var legsData = LegsExercises()
    @StateObject var absData = AbsExercises()
    @StateObject var armsAbdData = ArmsAddExercises()
    @StateObject var armsAddData = ArmsAddExercises()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(legsData)
            .environmentObject(absData)
            .environmentObject(armsAbdData)
            .environmentObject(armsAddData)
        }
        
    }
}


