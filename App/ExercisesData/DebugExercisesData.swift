import SwiftUI

class DebugExercisesData: ObservableObject {
    @Published var dDebugI = [
        ExerciseDraft(name: "lateral abs", muscle: .abs, sideSplit: true), 
    ]
    
    @Published var dDebugII = [
        ExerciseDraft(name: "overhead raise"),
    ]
    
    @Published var dDebugIII = [
        ExerciseDraft(name: "wrist curl (L)"),
    ]
}
