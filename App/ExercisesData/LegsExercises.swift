import SwiftUI

class LegsExercises: ObservableObject {
    @Published var dLegsI = [
        ED(n: "calf", bp: "c", rl: true),
        ED(n: "biceps", bp: "b"),
        ED(n: "squat", t: "s"),
        ED(n: "deadlift"),
    ]
    
    @Published var dLegsII = [
        ED(n: "frontal squat", t: "s", bp: "q", rl: true),
        ED(n: "lateral squat", t: "s", bp: "q", rl: true),
        ED(n: "leg raise", bp: "t", rl: true),
    ]
    
    @Published var dLegsIII = [
        ED(n: "internal calf", bp: "c", rl: true),
        ED(n: "external calf", bp: "c", rl: true),
    ]
}
