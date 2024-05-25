import SwiftUI

class AbsExercises: ObservableObject {
    @Published var dAbsI = [
        ED(n: "horizontal abs"),
        ED(n: "lateral abs", rl: true),
    ]
    
    @Published var dAbsII = [
        ED(n: "roll"),
        ED(n: "criss-cross"),
    ]
    
    @Published var dAbsIII = [
        ED(n: "reverse horizontal abs"),
    ]
}


