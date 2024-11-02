import SwiftUI

struct RepetitionControlView: View {
    @Binding var currentRepetitions: Int
    let onSave: () -> Void
    
    var body: some View {
        HStack {
            Button(action: {
                if currentRepetitions > 0 {
                    currentRepetitions -= 1
                    onSave()
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
                onSave()
            }) {
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
            }
        }
        .frame(width: 300) // Fixed width for the entire HStack
        .padding()
    }
}

