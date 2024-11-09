import SwiftUI

struct WeightControlComponentView: View {
    @Binding var currentWeight: Int
    let onSave: () -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                if currentWeight > 0 {
                    currentWeight -= 1
                    onSave()
                }
            }) {
                Image(systemName: "minus.circle")
                    .font(.largeTitle)
            }
            
            Spacer()
            
            Text("\(currentWeight) kg")
                .font(.title)
                .frame(width: 100)
            
            Spacer()
            
            Button(action: {
                currentWeight += 1
                onSave()
            }) {
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
            }
        }
        .frame(width: 300)
        .padding()
    }
}
