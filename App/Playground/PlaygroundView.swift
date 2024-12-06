import SwiftUI

struct PlaygroundView: View {
    
    private let NavData: [NavlinkData] = [
        NavlinkData(label: "Journal", view: AnyView(PGJournalView())),
        NavlinkData(label: "Random from array", view: AnyView(PGRandomFromArrayView())),
        NavlinkData(label: "Grid", view: AnyView(PGGridView())),
        NavlinkData(label: "ExerciseGrid", view: AnyView(MuscleGroupsGrid())),
        NavlinkData(label: "Quotes", view: AnyView(PGQuotes())),
        NavlinkData(label: "ExerciseStats", view: AnyView(ExerciseStats())),
        NavlinkData(label: "PGInput", view: AnyView(PGInput())),
        
    ]
    
    var body: some View {
        VStack {
            Text("Welcome to the Playground")
                .font(.largeTitle)
            Text("Who told you what was down here?")
                .font(.caption)
            NavigationStack {
                
                List {
                    ForEach(NavData) { navEntry in
                        NavigationLink { 
                            navEntry.view
                                .applyNavigationTitleStyle(title: navEntry.label)
                                .environmentObject(ExerciseDrafts())
                        } label: { 
                            Text(navEntry.label)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView().environmentObject(ExerciseDrafts())
    }
}
