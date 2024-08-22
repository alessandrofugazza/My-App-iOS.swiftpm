import SwiftUI

class DebugExercisesData: ObservableObject {
    @Published var dDebugI = [
        ExerciseDraft(name: "horizontal abs"),
    ]
    
    @Published var dDebugII = [
        ExerciseDraft(name: "overhead raise"),
    ]
    
    @Published var dDebugIII = [
        ExerciseDraft(name: "wrist curl (L)"),
    ]
}
