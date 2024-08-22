import SwiftUI

struct WorkoutView: View {
    
    @EnvironmentObject var legsExercises: LegsExercisesData
    @EnvironmentObject var absExercises: AbsExercisesData
    @EnvironmentObject var armsAbdExercises: ArmsAbdExercisesData
    @EnvironmentObject var armsAddExercises: ArmsAddExercisesData
    @EnvironmentObject var debugExercises: DebugExercisesData
    
    @State var prioritiesPool: [EPriority] = []
    
    @State var newExercise: Exercise = Exercise(name: "")
    @State var prevExercise: Exercise = Exercise(name: "")
    @State var scale: CGFloat = 1.0
    @State var allExercises: [EPriority: [Exercise]] = [:]
    @State var flag = false
    @State var randomPriority: EPriority? = nil
    
    @State var currentRepetitions: Int = 0
    
    func saveRepetitions(_ repetitions: Int, for fakeId: String) {
        let key = "reps_\(fakeId)"
        UserDefaults.standard.set(repetitions, forKey: key)
    }
    
    func getRepetitions(for fakeId: String) -> Int {
        let key = "reps_\(fakeId)"
        return UserDefaults.standard.integer(forKey: key)
    }
    
    
    private func setUpExercises(p1: [ExerciseDraft], p2: [ExerciseDraft], p3: [ExerciseDraft]) -> [EPriority: [Exercise]] {
        var exercisesDict: [EPriority: [Exercise]] = [:]
        let allExercisesDrafts = [p1, p2, p3]
        
        var i = 0
        for priority in EPriority.allCases {
            var exercises: [Exercise] = []
            for draft in allExercisesDrafts[i] {
                if draft.sideSplit ?? false {
                    let newExerciseR = Exercise(
                        name: draft.name.capitalized.appending(" (R)"), 
                        movementType: draft.movementType, 
                        muscle: draft.muscle,
                        side: .right,
                        repetitions: getRepetitions(for: newExercise.fakeId),
                        fakeId: draft.fakeId
                    )
                    let newExerciseL = Exercise(
                        name: draft.name.capitalized.appending(" (L)"), 
                        movementType: draft.movementType, 
                        muscle: draft.muscle,
                        side: .left,
                        repetitions: getRepetitions(for: newExercise.fakeId),
                        fakeId: draft.fakeId
                    )
                    exercises.append(newExerciseR)
                    exercises.append(newExerciseL)
                } else {
                    let newExercise = Exercise(
                        name: draft.name.capitalized, 
                        movementType: draft.movementType, 
                        muscle: draft.muscle,
                        side: draft.singleSide,
                        repetitions: getRepetitions(for: newExercise.fakeId),
                        fakeId: draft.fakeId

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
            HStack {
                VStack {
                    HStack {
                        Text(newExercise.name)
                            .font(.largeTitle)
                            .frame(minHeight: 200)
                            .animation(.default, value: newExercise.id)
                        VStack {
                            if randomPriority != nil {
                                Text(randomPriority!.rawValue)
                            }  
                            if let muscle = newExercise.muscle {
                                Text(muscle.rawValue)
                                    .animation(.default, value: newExercise.id)
                            } 
                            if let movementType = newExercise.movementType {
                                Text(movementType.rawValue)
                                    .animation(.default, value: newExercise.id)
                            }
                        }
                    }
                    HStack {
                        Button(action: {
                            
                            if currentRepetitions > 0 {
                                currentRepetitions -= 1
                                saveRepetitions(currentRepetitions, for: newExercise.fakeId)
                            }
                        }) {
                            Text("-")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .clipShape(Circle())
                        }
                        
                
                        Text("\(currentRepetitions) reps")
                            .font(.title)
                            .padding(.horizontal)
                        
                        Button(action: {
                            currentRepetitions += 1
                            saveRepetitions(currentRepetitions, for: newExercise.fakeId)
                        }) {
                            Text("+")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .clipShape(Circle())
                        }
                    }
                }
            }
            Divider()
                .padding()
            Button(action: {
                repeat {
                    randomPriority = prioritiesPool.randomElement()!
                    flag = false
                    if let selectedExercise = allExercises[randomPriority!]?.randomElement() {
                        newExercise = selectedExercise
                    } else {
                        newExercise=Exercise(name: "fucking error mate")
                    }
                    if (newExercise.name == prevExercise.name) {
                        flag = true
                        continue
                    }
                    if (newExercise.movementType != nil && prevExercise.movementType  != nil) {
                        if (newExercise.movementType == prevExercise.movementType) {
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
                    if (newExercise.muscle != nil && prevExercise.muscle  != nil) {
                        if (newExercise.muscle == prevExercise.muscle) {
                            flag = true
                            continue
                        }
                    }
                } while (
                    flag == true
                ) 
                prevExercise = newExercise
                currentRepetitions = getRepetitions(for: newExercise.fakeId)
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
            for priority in EPriority.allCases {
                for _ in 1...i {
                    prioritiesPool.append(priority)
                }
                i/=2
            }
            
            
            allExercises = setUpExercises(
                p1: legsExercises.dLegsI + absExercises.dAbsI + armsAbdExercises.dArmsAbdI + armsAddExercises.dArmsAddI, 
                p2: legsExercises.dLegsII + absExercises.dAbsII + armsAbdExercises.dArmsAbdII + armsAddExercises.dArmsAddII, 
                p3: legsExercises.dLegsIII + absExercises.dAbsIII + armsAbdExercises.dArmsAbdIII + armsAddExercises.dArmsAddIII
            )
            
//            allExercises = setUpExercises(
//                p1: 
//                    debugExercises.dDebugI, 
//                p2: debugExercises.dDebugII, 
//                p3: debugExercises.dDebugIII
//            )
            
            
        }
        
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
