import Foundation

class ExerciseDrafts: ObservableObject {
    @Published var exerciseDrafts: [EMuscle: [EPriority: [ExerciseDraft]]] = [
        .armsExt: [
            .I: [
                ExerciseDraft(name: "push-ups", movementType: .pushup),
                ExerciseDraft(name: "back push-ups", movementType: .pushup),
            ],
            .II: [
                ExerciseDraft(name: "sitting triceps", muscle: .tricep, sideType: .split),
                ExerciseDraft(name: "lateral deltoid", muscle: .deltoid, sideType: .split),
                ExerciseDraft(name: "reverse wrist curl", muscle: .forearmAbd, sideType: .singleFocus, sideFocus: .left),
                ExerciseDraft(name: "overhead raise", movementType: .pushup, sideType: .split),
            ]
        ],
        .armsFlex: [
            .I: [
                
                ExerciseDraft(name: "barbell traction", movementType: .traction, sideType: .split),
                ExerciseDraft(name: "pecs", muscle: .pectoral, sideType: .split),
            ],
            .II: [
                ExerciseDraft(name: "biceps dumbbell", muscle: .bicep, sideType: .split),
                ExerciseDraft(name: "wrist curl", muscle: .forearmAdd, sideType: .singleFocus, sideFocus: .left),
            ],
            
        ],
        .abs: [
            .I: [
                ExerciseDraft(name: "horizontal abs", muscle: .abs),
                
            ],
            .II: [
                ExerciseDraft(name: "lateral abs", muscle: .abs, sideType: .split), 
            ],

        ],
        .legs: [
            .I: [
                
                ExerciseDraft(name: "squat", movementType: .squat),
                ExerciseDraft(name: "deadlift", movementType: .deadlift),
            ],
            .II: [
                ExerciseDraft(name: "calf", muscle: .calf, sideType: .split),
                ExerciseDraft(name: "hamstrings", muscle: .hamstring),
                ExerciseDraft(name: "lateral squat", movementType: .squat, sideType: .split),
                ExerciseDraft(name: "leg raise", muscle: .thigh, sideType: .split),
            ],

        ]
    ]
}

