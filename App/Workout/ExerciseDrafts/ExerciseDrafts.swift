import Foundation

class ExerciseDrafts: ObservableObject {
    
    func saveExerciseDrafts() {
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(exerciseDrafts)
            UserDefaults.standard.set(data, forKey: "exerciseDraftsData")
        } catch {
            print("Failed to encode exercise drafts: \(error)")
        }
    }
    
    @Published var exerciseDrafts: [EPriority: [EMechanic: [ExerciseDraft]]] = [
        .I: [
            .isolation: [
                ExerciseDraft(name: "dumbbell wrist curl", muscles: [.high: [.forearms]], sideFocus: .left),
                ExerciseDraft(name: "dumbbell calf raises", muscles: [.high: [.calves]], sideType: .split),
                ExerciseDraft(name: "machine hamstring curl", muscles: [.high: [.hamstrings]]),
                ExerciseDraft(name: "dumbbell lateral raise", muscles: [.high: [.lateralShoulder]]),
                ExerciseDraft(name: "leg raises", muscles: [.high: [.abdominals]]),
                ExerciseDraft(name: "machine leg extension", muscles: [.high: [.quads]]),
            ],
            .compound: [
                ExerciseDraft(name: "barbell squat", muscles: [.high: [.quads], .medium: [.glutes], .low: [.lowerBack]]),
                ExerciseDraft(name: "barbell deadlift", muscles: [.high: [.trapsMiddle, .lowerBack], .medium: [.glutes]]),
                ExerciseDraft(name: "chin ups", muscles: [.high: [.lats], .medium: [.biceps], .low: [.forearms]]),
                ExerciseDraft(name: "parallel bar dips", muscles: [.high: [.chest], .medium: [.triceps]]),
            ]
        ],
        .II: [
            .isolation: [
                ExerciseDraft(name: "dumbbell curl", muscles: [.high: [.biceps]]),
                ExerciseDraft(name: "dumbbell skullcrusher", muscles: [.high: [.triceps]]),
                ExerciseDraft(name: "weighted leg raises", muscles: [.high: [.quads]], sideType: .split),
                ExerciseDraft(name: "oblique crunch", muscles: [.high: [.obliques]], sideType: .split),
                ExerciseDraft(name: "standing hamstring curl", muscles: [.high: [.hamstrings]]),
            ],
            .compound: [
                ExerciseDraft(name: "push up", muscles: [.high: [.chest], .medium: [.triceps]]),
                ExerciseDraft(name: "barbell stiff leg deadlifts", muscles: [.high: [.glutes, .hamstrings], .medium: [.lowerBack]]),
                ExerciseDraft(name: "barbell step up", muscles: [.high: [.quads], .medium: [.glutes]], sideType: .split),
                ExerciseDraft(name: "dumbbell goblet squat", muscles: [.high: [.glutes, .quads]]),
                ExerciseDraft(name: "barbell low bar good morning", muscles: [.high: [.hamstrings], .medium: [.glutes], .low: [.lowerBack]]),
                ExerciseDraft(name: "machine seated calf raises", muscles: [.high: [.calves]]),
            ]
        ],
        .III: [
            .isolation: [
                ExerciseDraft(name: "dumbbell wrist extension", muscles: [.high: [.forearms]], sideFocus: .left),
                ExerciseDraft(name: "barbell calf raises", muscles: [.high: [.calves]]),
                ExerciseDraft(name: "barbell silverback shrug", muscles: [.high: [.traps]]),
                ExerciseDraft(name: "dumbbell seated rear delt fly", muscles: [.high: [.rearShoulder]]),
            ],
            .compound: [
                ExerciseDraft(name: "barbell overhead press", muscles: [.high: [.frontShoulder], .medium: [.triceps]]),
                ExerciseDraft(name: "barbell bench press", muscles: [.high: [.chest], .medium: [.triceps]]),
                ExerciseDraft(name: "dumbbell row unilateral", muscles: [.high: [.lats, .trapsMiddle], .medium: [.biceps], .low: [.forearms]], sideType: .split),
            ]
        ],
        .IV: [
            .isolation: [
                ExerciseDraft(name: "crunches", muscles: [.high: [.abdominals]]),
                ExerciseDraft(name: "dumbbell hammer curl", muscles: [.high: [.biceps]]),
                ExerciseDraft(name: "barbell laying triceps extensions", muscles: [.high: [.triceps]]),
                ExerciseDraft(name: "barbell curl", muscles: [.high: [.biceps]]),
            ],
            .compound: [
                ExerciseDraft(name: "pull ups", muscles: [.high: [.lats], .medium: [.biceps], .low: [.forearms]]),
                ExerciseDraft(name: "broad grip pull ups", muscles: [.high: [.lats], .medium: [.biceps], .low: [.forearms]]),
            ]
        ]
    ]
}

