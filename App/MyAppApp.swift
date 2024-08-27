import SwiftUI

@main
struct MyAppApp: App {
    @StateObject var legsDrafts = LegsDrafts()
    @StateObject var absDrafts = AbsDrafts()
    @StateObject var armsExtDrafts = ArmsExtDrafts()
    @StateObject var armsFlexDrafts = ArmsFlexDrafts()
    @StateObject var debugExercisesData = DebugExercisesData()
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(legsDrafts)
            .environmentObject(absDrafts)
            .environmentObject(armsExtDrafts)
            .environmentObject(armsFlexDrafts)
            .environmentObject(debugExercisesData)
        }
        
    }
}


