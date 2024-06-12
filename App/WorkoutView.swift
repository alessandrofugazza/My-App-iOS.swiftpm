import SwiftUI

struct WorkoutView: View {
    
    @EnvironmentObject var legs: LegsExercises
    @EnvironmentObject var abs: AbsExercises
    @EnvironmentObject var armsAbd: ArmsAbdExercises
    @EnvironmentObject var armsAdd: ArmsAddExercises
    
    enum FocusMuscleGroup: CaseIterable {
        case armsAdd
        case armsAbd
        case legs
        case abs
    }
    
    enum CommonMuscleGroup: CaseIterable {
        
    }
    
    enum Priority: CaseIterable {
        case III
        case II
        case I
    }
    
    @State var prioritiesPool: [Priority] = []
    
    @State var newExercise: Exercise = Exercise(name: "", type: nil, bodyPart: nil)
    @State var prevExercise: Exercise = Exercise(name: "", type: nil, bodyPart: nil)
    @State var scale: CGFloat = 1.0
    @State var allCommonExercises: [Priority: [Exercise]] = [:]
    @State var allFocusExercises: [Priority: [Exercise]] = [:]
    @State var flag = false
    
    private func setUpExercises(p1: [ED], p2: [ED], p3: [ED]) -> [Priority: [Exercise]] {
        var exercisesDict: [Priority: [Exercise]] = [:]
        let allExercisesDrafts = [p1, p2, p3]

        var i = 0
        for priority in Priority.allCases {
            var exercises: [Exercise] = []
            for draft in allExercisesDrafts[i] {
                if draft.rl ?? false {
                    let newExerciseR = Exercise(
                        name: draft.n.capitalized.appending(" (R)"), 
                        type: draft.t, 
                        bodyPart: draft.bp,
                        side: "r"
                    )
                    let newExerciseL = Exercise(
                        name: draft.n.capitalized.appending(" (L)"), 
                        type: draft.t, 
                        bodyPart: draft.bp,
                        side: "l"
                    )
                    exercises.append(newExerciseR)
                    exercises.append(newExerciseL)
                } else {
                    let newExercise = Exercise(
                        name: draft.n.capitalized, 
                        type: draft.t, 
                        bodyPart: draft.bp
                    )
                    exercises.append(newExercise)
                }
            }
            i+=1
            exercisesDict[priority] = exercises
        }
        return exercisesDict
    }
    
    
    
    var body: some View {
        VStack {
            Text(newExercise.name)
                .font(.largeTitle)
                .frame(minHeight: 200)
                .animation(.default, value: newExercise.id)
                Divider()
                .padding()
            Button(action: {
                repeat {
                    let randomPriority = prioritiesPool.randomElement()!
                    flag = false
                    if let selectedExercise = allFocusExercises[randomPriority]?.randomElement() {
                        newExercise = selectedExercise
                    } else {
                        newExercise=Exercise(name: "fucking error mate")
                    }
                    if (newExercise.name == prevExercise.name) {
                        flag = true
                        continue
                    }
                    if (newExercise.type != nil && prevExercise.type  != nil) {
                        if (newExercise.type == prevExercise.type) {
                            flag = true
                            continue
                        }
                    }
                    if (newExercise.side != nil && prevExercise.side  != nil) {
                        if (newExercise.side == prevExercise.side) {
                            flag = true
                            continue
                        }
                    }
                    if (newExercise.bodyPart != nil && prevExercise.bodyPart  != nil) {
                        if (newExercise.bodyPart == prevExercise.bodyPart) {
                            flag = true
                            continue
                        }
                    }
                } while (
                    flag == true
                ) 
                prevExercise = newExercise
                withAnimation {
                    scale = 1.1
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                    withAnimation {
                        scale = 1.0
                    }
                }
            }) {
                Text("NEXT")
                    .bold()
            }
            .padding()
            .foregroundColor(.white)
            .background(Color(red: 205/255, green: 92/255, blue: 92/255))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.white, lineWidth: 2))
            .scaleEffect(scale)
        }
        .onAppear {
            var i = 4
            for priority in Priority.allCases {
                for _ in 1...i {
                    prioritiesPool.append(priority)
                }
                i/=2
            }
            
            
            
            
            
            let todaysFocusMuscleGroup = FocusMuscleGroup.allCases.randomElement()
            
            switch todaysFocusMuscleGroup {
            case .armsAdd:
                allFocusExercises = setUpExercises(p1: armsAdd.dArmsAddI, p2: armsAdd.dArmsAddII, p3: armsAdd.dArmsAddIII)
            case .armsAbd:
                allFocusExercises = setUpExercises(p1: armsAbd.dArmsAbdI, p2: armsAbd.dArmsAbdII, p3: armsAbd.dArmsAbdIII)
            case .legs:
                allFocusExercises = setUpExercises(p1: legs.dLegsI, p2: legs.dLegsII, p3: legs.dLegsIII)
            case .abs:
                allFocusExercises = setUpExercises(p1: abs.dAbsI, p2: abs.dAbsII, p3: abs.dAbsIII)
            default:
                print("fuck you")
            }
            
        }
        
    }
    
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
