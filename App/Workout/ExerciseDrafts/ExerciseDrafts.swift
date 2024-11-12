import Foundation

class ExerciseDrafts: ObservableObject {
    
    init() {
        loadExerciseDrafts()
    }
    
    func saveExerciseDrafts() {
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(exerciseDrafts)
            UserDefaults.standard.set(data, forKey: "exerciseDraftsData")
        } catch {
            print("Failed to encode exercise drafts: \(error)")
        }
    }
    
    func loadExerciseDrafts() {
        let decoder = JSONDecoder()
        if let data = UserDefaults.standard.data(forKey: "exerciseDraftsData") {
            do {
                let decodedData = try decoder.decode([EPriority: [EMechanic: [ExerciseDraft]]].self, from: data)
                exerciseDrafts = decodedData
            } catch {
                print("Failed to decode exercise drafts: \(error)")
            }
        }
    }
    
    
    
    @Published var exerciseDrafts: [EPriority: [EMechanic: [ExerciseDraft]]] = [
        :
    ]
}

