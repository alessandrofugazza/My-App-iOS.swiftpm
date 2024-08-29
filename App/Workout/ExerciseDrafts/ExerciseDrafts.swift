import Foundation

class ExerciseDrafts: ObservableObject {
    @Published var exerciseDrafts: [EMuscleGroups: [EPriority: [ExerciseDraft]]] = [
        .armsExt: [
            .I: [
                ExerciseDraft(name: "sitting triceps", muscle: .tricep, sideType: .split),
                ExerciseDraft(name: "push-ups", movementType: .pushup),
                ExerciseDraft(name: "lateral deltoid", muscle: .deltoid, sideType: .split),
                ExerciseDraft(name: "reverse wrist curl", muscle: .forearmAbd, sideType: .singleFocus, sideFocus: .left),
            ],
            .II: [
                ExerciseDraft(name: "overhead raise", movementType: .pushup, sideType: .split),
                ExerciseDraft(name: "back push-ups", movementType: .pushup),
                ExerciseDraft(name: "frontal deltoid", muscle: .deltoid, sideType: .split),
            ],
            .III: [
                ExerciseDraft(name: "laying triceps", muscle: .tricep, sideType: .split),
                ExerciseDraft(name: "overhead hammer raise", movementType: .pushup, sideType: .split),
                ExerciseDraft(name: "inclined push-ups", movementType: .pushup),
                ExerciseDraft(name: "reclined push-ups", movementType: .pushup),
                ExerciseDraft(name: "laying barbell triceps", muscle: .tricep),
            ]
        ],
        .armsFlex: [
            .I: [
                ExerciseDraft(name: "biceps dumbbell", muscle: .bicep, sideType: .split),
                ExerciseDraft(name: "traction", movementType: .traction, sideType: .split),
                ExerciseDraft(name: "wrist curl", muscle: .forearmAdd, sideType: .singleFocus, sideFocus: .left),
            ],
            .II: [
                ExerciseDraft(name: "pecs", muscle: .pectoral, sideType: .split),
                ExerciseDraft(name: "hammer wrist curl", muscle: .forearmAdd, sideType: .singleFocus, sideFocus: .left),
            ],
            .III: [
                ExerciseDraft(name: "internal biceps dumbbell", muscle: .bicep, sideType: .split),
                ExerciseDraft(name: "external biceps dumbbell", muscle: .bicep, sideType: .split),
                ExerciseDraft(name: "hammer biceps dumbbell", muscle: .bicep, sideType: .split),
                ExerciseDraft(name: "biceps barbell", muscle: .bicep),
                ExerciseDraft(name: "bucket raise", movementType: .traction, sideType: .split),
                ExerciseDraft(name: "vertical pecs", muscle: .pectoral, sideType: .split),
                ExerciseDraft(name: "barbell biceps", muscle: .bicep)
            ]
        ],
        .abs: [
            .I: [
                ExerciseDraft(name: "horizontal abs", muscle: .abs),
                ExerciseDraft(name: "lateral abs", muscle: .abs, sideType: .split), 
            ],
            .II: [
                ExerciseDraft(name: "roll", muscle: .abs),
                ExerciseDraft(name: "criss-cross", muscle: .abs),
            ],
            .III: [
                ExerciseDraft(name: "reverse horizontal abs", muscle: .abs),
            ]
        ],
        .legs: [
            .I: [
                ExerciseDraft(name: "calf", muscle: .calf, sideType: .split),
                ExerciseDraft(name: "hamstrings", muscle: .hamstring),
                ExerciseDraft(name: "squat", movementType: .squat),
                ExerciseDraft(name: "deadlift", movementType: .deadlift),
            ],
            .II: [
                ExerciseDraft(name: "frontal squat", movementType: .squat, sideType: .split),
                ExerciseDraft(name: "lateral squat", movementType: .squat, sideType: .split),
                ExerciseDraft(name: "leg raise", muscle: .thigh, sideType: .split),
            ],
            .III: [
                ExerciseDraft(name: "internal calf", muscle: .calf, sideType: .split),
                ExerciseDraft(name: "external calf", muscle: .calf, sideType: .split),
            ]
        ]
    ]
}

