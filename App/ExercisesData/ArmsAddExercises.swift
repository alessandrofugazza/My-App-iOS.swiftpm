import SwiftUI

class ArmsAddExercises: ObservableObject {
    @Published var dArmsAddI = [
        ED(n: "biceps dumbbell", bp: "b", rl: true),
        ED(n: "traction", t: "t", rl: true),
        ED(n: "wrist curl (L)", bp: "f"),
    ]
    
    @Published var dArmsAddII = [
        ED(n: "pecs", bp: "p", rl: true),
        ED(n: "hammer wrist curl (L)", bp: "f"),
    ]
    
    @Published var dArmsAddIII = [
        ED(n: "internal biceps dumbbell", bp: "b", rl: true),
        ED(n: "external biceps dumbbell", bp: "b", rl: true),
        ED(n: "hammer biceps dumbbell", bp: "b", rl: true),
        ED(n: "biceps barbell", bp: "b"),
        ED(n: "bucket raise", t: "t", rl: true),
        ED(n: "vertical pecs", bp: "p", rl: true),
    ]
}
