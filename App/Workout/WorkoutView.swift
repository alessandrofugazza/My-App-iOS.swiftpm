import SwiftUI

struct WorkoutView: View {
    
    @EnvironmentObject var exerciseDrafts: ExerciseDrafts
    @EnvironmentObject var debugExercises: DebugExercisesData
    
    @State var prioritiesPool: [EPriority] = []
    @State var newExercise: Exercise = Exercise()
    @State var prevExercise: Exercise = Exercise()
    @State var scale: CGFloat = 1.0
    @State var allExercises: [EPriority: [EMechanic: [Exercise]]] = [:]
    @State var flag = false
    @State var randomPriority: EPriority? = nil
    @State var currentMachanic: EMechanic = .compound
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
    
    func haveCommonMuscles(_ exercise1: Exercise, _ exercise2: Exercise) -> Bool {
        let muscles1 = exercise1.muscles.values.flatMap { $0 }
        let muscles2 = exercise2.muscles.values.flatMap { $0 }
        
        return !Set(muscles1).intersection(Set(muscles2)).isEmpty
    }
    
    private func setUpExercises() -> [EPriority: [EMechanic: [Exercise]]] {
        var exercisesDict: [EPriority: [EMechanic: [Exercise]]] = [:]
        
        for priority in EPriority.allCases {
            exercisesDict[priority] = [:]
            
            for mechanic in EMechanic.allCases {
                var exercises: [Exercise] = []
                
                if let draftsForPriority = exerciseDrafts.exerciseDrafts[priority]?[mechanic] {
                    for draft in draftsForPriority {
                        var newExercise = Exercise(
                            name: draft.name.capitalized,
                            muscles: draft.muscles,
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
                            if draft.sideType == .singleFocus {
                                newExercise.side = draft.sideFocus
//                                seems to not be working?
                                newExercise.name.append(draft.sideFocus?.rawValue ?? "Missing side focus")
                            }
                            exercises.append(newExercise)
                        }
                    }
                }
                exercisesDict[priority]?[mechanic] = exercises
            }
        }
        
        return exercisesDict
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack {

                        Text(newExercise.name)
                            .font(.largeTitle)
                    
                }
            }
            
            .animation(.default, value: newExercise.id)
            
            if newExercise.name != "" {
                VStack {
                    HStack {
                        Button(action: {
                            if currentRepetitions > 0 {
                                currentRepetitions -= 1
                                saveExerciseData(repetitions: currentRepetitions, weight: currentWeight, for: prevExercise.draftId)
                            }
                        }) {
                            Image(systemName: "minus.circle")
                                .font(.largeTitle)
                        }
                        
                        Spacer()
                        
                        Text("\(currentRepetitions) reps")
                            .font(.title)
                            .frame(width: 100) // Set fixed width for the text
                        
                        Spacer()
                        
                        Button(action: {
                            currentRepetitions += 1
                            saveExerciseData(repetitions: currentRepetitions, weight: currentWeight, for: prevExercise.draftId)
                        }) {
                            Image(systemName: "plus.circle")
                                .font(.largeTitle)
                        }
                    }
                    .frame(width: 300) // Fixed width for the entire HStack
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
                        
                        Spacer()
                        
                        Text("\(currentWeight) kg")
                            .font(.title)
                            .frame(width: 100) // Set fixed width for the text
                        
                        Spacer()
                        
                        Button(action: {
                            currentWeight += 1
                            saveExerciseData(repetitions: currentRepetitions, weight: currentWeight, for: prevExercise.draftId)
                        }) {
                            Image(systemName: "plus.circle")
                                .font(.largeTitle)
                        }
                    }
                    .frame(width: 300) // Fixed width for the entire HStack
                    .padding()
                }
            }
            
            
            Divider()
                .padding()
            
            Button(action: {
                randomPriority = prioritiesPool.randomElement()!
                currentMachanic = currentMachanic == .compound ? .isolation : .compound
                
                repeat {
                    flag = false
                    if let selectedExercise = allExercises[randomPriority!]?[currentMachanic]!.randomElement() {
                        newExercise = selectedExercise
                    }
                    
                    if haveCommonMuscles(newExercise, prevExercise) {
                        flag = true
                        continue
                    }
                } while flag
                
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
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 205/255, green: 92/255, blue: 92/255))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.white, lineWidth: 2))
                    .scaleEffect(scale)
                
            }
        }
        .onAppear {
            var i = 4
            for priority in EPriority.allCases {
                for _ in 1...i {
                    prioritiesPool.append(priority)
//                    print(priority.rawValue)
                }
                i /= 2
            }
            
            allExercises = setUpExercises()
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
