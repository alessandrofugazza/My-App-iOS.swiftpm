import SwiftUI
import Foundation

let multiplier = 1.3 // todo check this valuenewSources

class Sources {
    let data: [String]
    var weights: [Double] = []
    var totalWeight: Double = 0
    
    init(data: [String]) {
        self.data = data
    }
}


func processSourcesWeights(sources: Sources) {
    for i in 0..<sources.data.count {
        let weight = pow(multiplier, Double(i))
        sources.weights.append(weight)
        sources.totalWeight += weight
    }
}



struct MindSourcesView: View {
    @State var sources: Sources
    
    init() {
        let sourcesData: [String] = [
            "Diagnostics",
            "Anatomy",
            "Body Language",
            "Psychology",
        ]
        
        let sources = Sources(data: sourcesData)
        
        
        processSourcesWeights(sources: sources)
        _sources = State(initialValue: sources)
        
    }
    
    @State var newSource: String = ""
    @State var prevSource: String = ""
    
    @State var scale: CGFloat = 1.0
    
    var body: some View {
        VStack {
            Text(newSource)
                .font(.largeTitle)
                .frame(minHeight: 200)
                .animation(.default, value: newSource)
            Divider()
                .padding()
            Button(action: {
                repeat {
                    
                    let randomNum = Double.random(in: 0..<sources.totalWeight)
                    
                    var accumulatedWeight: Double = 0
                    
                    
                    for (index, weight) in sources.weights.enumerated() {
                        accumulatedWeight += weight
                        if randomNum < accumulatedWeight {
                            prevSource = newSource
                            newSource = sources.data[index]
                            
                            break
                        }
                    }
                    
                } while (
                    newSource == prevSource
                ) 
                
                withAnimation {
                    scale = 1.1
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                    withAnimation {
                        scale = 1.0
                    }
                }
            }) {
                Text("NEXT SOURCE")
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
            .padding()
            
            
        }
    }
}


struct MindSourcesView_Previews: PreviewProvider {
    static var previews: some View {
        MindSourcesView()
    }
}


