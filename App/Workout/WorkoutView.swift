import SwiftUI

struct WorkoutView: View {
    
    @EnvironmentObject var exerciseDrafts: ExerciseDrafts
    @EnvironmentObject var debugExercises: DebugExercisesData
    
    @State var prioritiesPool: [EPriority] = []
    
//    IMPROVE is there really no better way to not initialize
    @State var newExercise: Exercise = Exercise()
    @State var prevExercise: Exercise = Exercise()
    @State var scale: CGFloat = 1.0
    @State var allExercises: [EPriority: [Exercise]] = [:]
    @State var flag = false
    @State var randomPriority: EPriority? = nil
    
    @State var currentRepetitions: Int = 0
    @State var currentWeight: Int = 0
    
    func saveExerciseData(repetitions: Int, weight: Int, for id: String) {
        let key = "exercise_\(id)"
        let exerciseData: SavedExerciseData = ["repetitions": repetitions, "weight": weight]
        UserDefaults.standard.set(exerciseData, forKey: key)
    }
    
    func getExerciseData(for id: String) -> SavedExerciseData? {
        let key = "exercise_\(id)"
        return UserDefaults.standard.dictionary(forKey: key) as? SavedExerciseData
    }
    
    
    private func setUpExercises() -> [EPriority: [Exercise]] {
        var exercisesDict: [EPriority: [Exercise]] = [:]

        
        for priority in EPriority.allCases {
            var exercises: [Exercise] = []
            for draftBodyPart in EDraftBodyPart.allCases {
            //            REFACTOR this fucking shit
//                CHECK THIS SYNTAX IS FUCKING STUPID
                if let draftsForPriority = exerciseDrafts.exerciseDrafts[draftBodyPart]?[priority] {
                    for draft in draftsForPriority {
                        var bodyPart : EBodyPart
                        switch (draftBodyPart) {
                        case .abs:
                            bodyPart = .abs
                        case .armsExt:
                            bodyPart = .arm
                        case .armsFlex:
                            bodyPart = .arm
                        case .legs:
                            bodyPart = .leg
                        }
                        var newExercise = Exercise(
                            name: draft.name.capitalized,
                            bodyPart: bodyPart,
                            movementType: draft.movementType, 
                            muscle: draft.muscle,
                            draftId: draft.id
                        )
                        if draft.sideType == .split {
                            var newExerciseRight = newExercise
                            var newExerciseLeft = newExercise
                            newExerciseRight.side = .right
                            newExerciseRight.name.append(ESide.right.rawValue)
                            newExerciseLeft.name.append(ESide.left.rawValue)
                            newExerciseLeft.side = .left
                            exercises.append(newExerciseRight)
                            exercises.append(newExerciseLeft)
                        } else {
                            if (draft.sideType == .singleFocus) {
                                newExercise.side = draft.sideFocus
                                newExercise.name.append(draft.sideFocus?.rawValue ?? "you forgot to add sidefocus you dumb fuck")
                            }
                            exercises.append(newExercise)
                        }
                    }
                }
                exercisesDict[priority] = exercises
            }
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
//                            .frame(minHeight: 200)
                            
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
                    .animation(.default, value: newExercise.id)
                    if (newExercise.name != "") { 
                        HStack {
                            Button(action: {
                                if currentRepetitions > 0 {
                                    currentRepetitions -= 1
//                                    IMPROVE avoid doing this shit
                                    saveExerciseData(repetitions: currentRepetitions, weight: currentWeight, for: prevExercise.draftId)
                                }
                            }) {
                                Image(systemName: "minus.circle")
                                    .font(.largeTitle)
                            }
                            
                            
                            Text("\(currentRepetitions) reps")
                                .font(.title)
                                .padding(.horizontal)
                            
                            Button(action: {
                                currentRepetitions += 1
                                saveExerciseData(repetitions: currentRepetitions, weight: currentWeight, for: prevExercise.draftId)
                            }) {
                                Image(systemName: "plus.circle")
                                    .font(.largeTitle)
                            }
                        }
                        .padding()
                        HStack {
                            Button(action: {
                                if currentWeight > 0 {
                                    currentWeight -= 1
                                    saveExerciseData(repetitions: currentRepetitions, weight: currentWeight, for: prevExercise.draftId)
                                }
                            }) {
                                Image(systemName: "minus.circle")
                                    .font(.largeTitle)
                            }
                            
                            
                            Text("\(currentWeight) weight")
                                .font(.title)
                                .padding(.horizontal)
                            
                            Button(action: {
                                currentWeight += 1
                                saveExerciseData(repetitions: currentRepetitions, weight: currentWeight, for: prevExercise.draftId)
                            }) {
                                Image(systemName: "plus.circle")
                                    .font(.largeTitle)
                            }
                        }
                        .padding()
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
                    } 
                    if (newExercise.id == prevExercise.id) {
                        flag = true
                        continue
                    }
                    
                    if (newExercise.bodyPart == prevExercise.bodyPart && newExercise.side == prevExercise.side) {
                        flag = true
                        continue
                        
                    }
                    
                } while (
                    flag == true
                ) 
                prevExercise = newExercise
                
                let currentExerciseSavedData = getExerciseData(for: newExercise.draftId)
                
                currentRepetitions = currentExerciseSavedData?["repetitions"] ?? 0
                currentWeight = currentExerciseSavedData?["weight"] ?? 0
                
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
            
            
            allExercises = setUpExercises()
            
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
