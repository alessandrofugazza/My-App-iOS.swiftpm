import SwiftUI

struct MuscleCount {
    var muscle: EMuscle
    var count: Int
}

struct ExerciseStats: View {
    @EnvironmentObject var exerciseDrafts: ExerciseDrafts
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(EMuscle.allCases, id: \.self) { muscle in
                    VStack(alignment: .leading) {
                        Text(muscle.rawValue.capitalized)
                            .font(.title2)
                        
                        let muscleCounts = countForMuscle(muscle: muscle)
                        
                        // Display the counts
                        Text("Priority I: \(muscleCounts.priorityICount)")
                        Text("Priority II: \(muscleCounts.priorityIICount)")
                        Text("High Fatigue: \(muscleCounts.highFatigueCount)")
                        Text("Medium Fatigue: \(muscleCounts.mediumFatigueCount)")
                        Text("Low Fatigue: \(muscleCounts.lowFatigueCount)")
                        Text("Isolation Exercises: \(muscleCounts.isolationCount)")
                        Text("Compound Exercises: \(muscleCounts.compoundCount)")
                        
                        Divider().padding(.vertical)
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
    
    // Function to count the occurrences of the muscle across priorities, fatigue levels, and types (isolation/compound)
    func countForMuscle(muscle: EMuscle) -> MuscleCounts {
        var priorityICount = 0
        var priorityIICount = 0
        var highFatigueCount = 0
        var mediumFatigueCount = 0
        var lowFatigueCount = 0
        var isolationCount = 0
        var compoundCount = 0
        
        for (priority, mechanics) in exerciseDrafts.exerciseDrafts {
            for (mechanic, exercises) in mechanics {
                for exercise in exercises {
                    for (fatigueLevel, muscles) in exercise.muscles {
                        if muscles.contains(muscle) {
                            // Count by priority
                            if priority == .I {
                                priorityICount += 1
                            } else if priority == .II {
                                priorityIICount += 1
                            }
                            
                            // Count by fatigue level
                            switch fatigueLevel {
                            case .high:
                                highFatigueCount += 1
                            case .medium:
                                mediumFatigueCount += 1
                            case .low:
                                lowFatigueCount += 1
                            }
                            
                            // Count by exercise type
                            if mechanic == .isolation {
                                isolationCount += 1
                            } else if mechanic == .compound {
                                compoundCount += 1
                            }
                        }
                    }
                }
            }
        }
        
        return MuscleCounts(
            priorityICount: priorityICount,
            priorityIICount: priorityIICount,
            highFatigueCount: highFatigueCount,
            mediumFatigueCount: mediumFatigueCount,
            lowFatigueCount: lowFatigueCount,
            isolationCount: isolationCount,
            compoundCount: compoundCount
        )
    }
}

// Struct to hold muscle counts
struct MuscleCounts {
    var priorityICount: Int
    var priorityIICount: Int
    var highFatigueCount: Int
    var mediumFatigueCount: Int
    var lowFatigueCount: Int
    var isolationCount: Int
    var compoundCount: Int
}
        
        
