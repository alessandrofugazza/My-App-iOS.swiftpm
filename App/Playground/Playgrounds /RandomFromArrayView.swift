import SwiftUI

struct RandomFromArrayView: View {
    var allFunFacts = [
        "There are 12,600 people in my town.",
        "There is a farmers market every Wednesday in the summer.",
        "There is a creek that runs through town."
    ]
    
//    IMPROVE implement private 
    @State private var funFact = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("Fun Facts")
                    .font(.largeTitle)
                
                Text(funFact)
                    .font(.title)
                    .frame(maxWidth: 400, minHeight: 300)
                
                Button("Show Random Fact") {
                    // IMPROVE implement fallback string 
                    funFact = allFunFacts.randomElement() ?? "No Fun."
                }
            }
            .padding()
        }
    }
}

struct RandomFromArrayView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFromArrayView()
    }
}

