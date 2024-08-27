import SwiftUI

class AbsDrafts: ObservableObject {
//    IMPROVE is there a way to make it so declaring body part here is not necessary
    @Published var absDraftsI = [
        ExerciseDraft(name: "horizontal abs", bodyPart: .abs, muscle: .abs),
        ExerciseDraft(name: "lateral abs", bodyPart: .abs, muscle: .abs, sideSplit: true), 
    ]
    
    @Published var absDraftsII = [
        ExerciseDraft(name: "roll", bodyPart: .abs, muscle: .abs),
        ExerciseDraft(name: "criss-cross", bodyPart: .abs, muscle: .abs),
    ]
    
    @Published var absDraftsIII = [
        ExerciseDraft(name: "reverse horizontal abs", bodyPart: .abs, muscle: .abs),
    ]
}


