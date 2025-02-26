import SwiftUI

struct ContentView: View {
    
    private let NavData: [NavlinkData] = [
        NavlinkData(label: "Home", view: AnyView(HomeView()), image: "house"),
        NavlinkData(label: "Workout", view: AnyView(WorkoutView()), image: "dumbbell"),
//        NavlinkData(label: "Mind", view: AnyView(MindSourcesView()), image: "brain.head.profile"),
//        NavlinkData(label: "Practical", view: AnyView(PracticalSourcesView()), image: "book.and.wrench"),
//        NavlinkData(label: "Playground", view: AnyView(PlaygroundView()), image: "testtube.2"),
    ]
    
    var body: some View {
        TabView {
            ForEach(NavData) { navEntry in
                navEntry.view
                    .tabItem { 
                        Label(navEntry.label, systemImage: navEntry.image ?? GlobalData.shared.placeholderIcon) 
                    }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
