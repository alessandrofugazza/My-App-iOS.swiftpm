import SwiftUI

class Exercises: ObservableObject {
    @Published var dExercisesI = [
        ED(n: "sitting triceps", bp: "t", rl: true),
        ED(n: "push-ups", t: "p"),
        ED(n: "lateral deltoid", bp: "d", rl: true),
        ED(n: "reverse wrist curl (L)", bp: "f"),
        ED(n: "horizontal abs"),
        ED(n: "lateral abs", rl: true), 
        ED(n: "biceps dumbbell", bp: "b", rl: true),
        ED(n: "traction", t: "t", rl: true),
        ED(n: "wrist curl (L)", bp: "f"),
        ED(n: "calf", bp: "c", rl: true),
        ED(n: "biceps", bp: "b"),
        ED(n: "squat", t: "s"),
        ED(n: "deadlift"),
    ]
    
    @Published var dExercisesII = [
        ED(n: "overhead raise", t: "p", rl: true),
        ED(n: "back push-ups", t: "p"),
        ED(n: "frontal deltoid", bp: "d", rl: true),
        ED(n: "roll"),
        ED(n: "criss-cross"),
        ED(n: "pecs", bp: "p", rl: true),
        ED(n: "hammer wrist curl (L)", bp: "f"),
        ED(n: "frontal squat", t: "s", bp: "q", rl: true),
        ED(n: "lateral squat", t: "s", bp: "q", rl: true),
        ED(n: "leg raise", bp: "t", rl: true),
    ]
    
    @Published var dExercisesIII = [
        ED(n: "laying triceps", bp: "t", rl: true),
        ED(n: "overhead hammer raise", t: "p", rl: true),
        ED(n: "inclined push-ups", t: "p"),
        ED(n: "reclined push-ups", t: "p"),
        ED(n: "reverse horizontal abs"),
        ED(n: "internal biceps dumbbell", bp: "b", rl: true),
        ED(n: "external biceps dumbbell", bp: "b", rl: true),
        ED(n: "hammer biceps dumbbell", bp: "b", rl: true),
        ED(n: "biceps barbell", bp: "b"),
        ED(n: "bucket raise", t: "t", rl: true),
        ED(n: "vertical pecs", bp: "p", rl: true),
        ED(n: "internal calf", bp: "c", rl: true),
        ED(n: "external calf", bp: "c", rl: true),
    ]
}
