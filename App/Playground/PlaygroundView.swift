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
        NavlinkData(label: "Navigation", view: AnyView(PGNavigationMain())),
    ]
    
    var body: some View {
        VStack {
            NavigationStack {
                Text("Welcome to the Playground")
                    .font(.largeTitle)
                Text("Who told you what was down here?")
                    .font(.caption)
                List {
                    ForEach(NavData) { navEntry in
                        NavigationLink(destination: navEntry.view
                            .applyNavigationTitleStyle(title: navEntry.label)
                            .environmentObject(ExerciseDrafts()) // IMPROVE this is bullshit why do i need to do this
                        ) {
                            Text(navEntry.label)
                        }
                        
                    
                    }
                }
            }
        }
        .padding()
    }
}
