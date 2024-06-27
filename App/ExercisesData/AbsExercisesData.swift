import SwiftUI

class AbsExercisesData: ObservableObject {
    @Published var dAbsI = [
        ExerciseDraft(name: "horizontal abs", muscle: .abs),
        ExerciseDraft(name: "lateral abs", muscle: .abs, sideSplit: true), 
    ]
    
    @Published var dAbsII = [
        ExerciseDraft(name: "roll", muscle: .abs),
        ExerciseDraft(name: "criss-cross", muscle: .abs),
    ]
    
    @Published var dAbsIII = [
        ExerciseDraft(name: "reverse horizontal abs", muscle: .abs),
    ]
}


