import SwiftUI

struct BodyPartsGrid: View {
    private static let initialColumns = 2
    @State private var selectedSymbol: Symbol?
    @State private var numColumns = initialColumns
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: initialColumns)
    
    @State private var muscleGroups = [
        WorkoutGridItemData(text: "ArmExt", color: Color.pink),
        WorkoutGridItemData(text: "ArmFlex", color: Color.purple),
        WorkoutGridItemData(text: "Abs", color: Color.green),
        WorkoutGridItemData(text: "Legs", color: Color.blue),
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(muscleGroups) { muscleGroup in
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(muscleGroup.color)
                                .aspectRatio(1.0, contentMode: .fit)
                            
                            Text(muscleGroup.text)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                }
            }
        }
    }
    
//    func addSymbol() {
//        guard let name = selectedSymbol else { return }
//        withAnimation {
//            symbols.insert(name, at: 0)
//        }
//    }
//    
//    func remove(symbol: Symbol) {
//        guard let index = symbols.firstIndex(of: symbol) else { return }
//        withAnimation {
//            _ = symbols.remove(at: index)
//        }
//    }
}

extension BodyPartsGrid {
    var columnsText: String {
        numColumns > 1 ? "\(numColumns) Columns" : "1 Column"
    }
}

struct BodyPartsGrid_Previews : PreviewProvider {
    static var previews : some View {
        BodyPartsGrid()
    }
}
