import Foundation

class ExerciseDrafts: ObservableObject {
    @Published var exerciseDrafts: [EPriority: [EMechanic: [ExerciseDraft]]] = [
        .I: [
            .isolation: [
                ExerciseDraft(name: "dumbbell curl", muscles: [.high: [.biceps]]),
                ExerciseDraft(name: "dumbbell wrist curl", muscles: [.high: [.forearms]], sideFocus: .left),
                ExerciseDraft(name: "barbell calf raises", muscles: [.high: [.calves]]),
                ExerciseDraft(name: "dumbbell skullcrusher", muscles: [.high: [.triceps]]),
                ExerciseDraft(name: "machine hamstring curl", muscles: [.high: [.hamstrings]]),
                ExerciseDraft(name: "dumbbell lateral raise", muscles: [.high: [.lateralShoulder]]),
                ExerciseDraft(name: "leg raises", muscles: [.high: [.abdominals]]),
            ],
            .compound: [
                ExerciseDraft(name: "barbell squat", muscles: [.high: [.quads], .medium: [.glutes], .low: [.lowerBack]]),
                ExerciseDraft(name: "barbell deadlift", muscles: [.high: [.trapsMiddle, .lowerBack], .medium: [.glutes]]),
                ExerciseDraft(name: "chin ups", muscles: [.high: [.lats], .medium: [.biceps], .low: [.forearms]]),
                ExerciseDraft(name: "push up", muscles: [.high: [.chest], .medium: [.triceps]]),
                ExerciseDraft(name: "parallel bar dips", muscles: [.high: [.chest], .medium: [.triceps]]),
            ]
        ],
        .II: [
            .isolation: [
                ExerciseDraft(name: "barbell silverback shrug", muscles: [.high: [.traps]]),
                ExerciseDraft(name: "oblique crunch", muscles: [.high: [.obliques]], sideType: .split),
                ExerciseDraft(name: "dumbbell seated rear delt fly", muscles: [.high: [.rearShoulder]]),
            ],
            .compound: [
                ExerciseDraft(name: "barbell overhead press", muscles: [.high: [.frontShoulder], .medium: [.triceps]]),
                ExerciseDraft(name: "barbell bench press", muscles: [.high: [.chest], .medium: [.triceps]]),
                ExerciseDraft(name: "dumbbell row unilateral", muscles: [.high: [.lats, .trapsMiddle], .medium: [.biceps], .low: [.forearms]]),
                ExerciseDraft(name: "barbell stiff leg deadlifts", muscles: [.high: [.glutes, .hamstrings], .medium: [.lowerBack]]),
            ]
        ],
        .III: [
            .isolation: [
                ExerciseDraft(name: "crunches", muscles: [.high: [.abdominals]]),
            ],
            .compound: [
                ExerciseDraft(name: "pull ups", muscles: [.high: [.lats], .medium: [.biceps], .low: [.forearms]]),
                ExerciseDraft(name: "broad grip pull ups", muscles: [.high: [.lats], .medium: [.biceps], .low: [.forearms]]),
            ]
        ]
    ]
}

