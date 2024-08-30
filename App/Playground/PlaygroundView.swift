import SwiftUI

struct PlaygroundView: View {
    
    private let NavData: [NavlinkData] = [
        NavlinkData(label: "Journal", view: AnyView(PGJournalView())),
        NavlinkData(label: "Random from array", view: AnyView(PGRandomFromArrayView())),
        NavlinkData(label: "Grid", view: AnyView(PGGridView())),
        NavlinkData(label: "ExerciseList", view: AnyView(MuscleGroupsGrid()))
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

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
