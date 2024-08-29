import SwiftUI

struct MuscleGroupDetail: View {

    var muscleGroupExercises: [EPriority: [ExerciseDraft]]
    
    var body: some View {
        VStack {
            
            ForEach(EPriority.allCases) { priority in
                Text(priority.rawValue)
            }
            
        }
    }
}

struct MuscleGroupDetail_Previews: PreviewProvider {
    static var previews: some View {
        MuscleGroupDetail(
            muscleGroupExercises: 
                [
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
                ]
        )
    }
}
