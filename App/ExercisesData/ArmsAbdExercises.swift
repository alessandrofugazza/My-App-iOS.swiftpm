import SwiftUI

class ArmsAbdExercises: ObservableObject {
    @Published var dArmsAbdI = [
        ED(n: "sitting triceps", bp: "t", rl: true),
        ED(n: "push-ups", t: "p"),
        ED(n: "lateral deltoid", bp: "d", rl: true),
        ED(n: "reverse wrist curl (L)", bp: "f"),
    ]
    
    @Published var dArmsAbdII = [
        ED(n: "overhead raise", t: "p", rl: true),
        ED(n: "back push-ups", t: "p"),
        ED(n: "frontal deltoid", bp: "d", rl: true),
    ]
    
    @Published var dArmsAbdIII = [
        ED(n: "laying triceps", bp: "t", rl: true),
        ED(n: "overhead hammer raise", t: "p", rl: true),
        ED(n: "inclined push-ups", t: "p"),
        ED(n: "reclined push-ups", t: "p"),
    ]
}
