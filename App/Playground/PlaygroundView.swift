import SwiftUI

struct PlaygroundView: View {
    var body: some View {
        VStack {
            NavigationStack {
                Text("Welcome to the Playground")
                    .font(.largeTitle)
                Text("Who told you what was down here?")
                    .font(.caption)
                List {
                    NavigationLink(destination: PGJournalView()) {
                        Text("Journal")
                    }
                    NavigationLink(destination: PGRandomFromArrayView()) {
                        Text("Random from array")
                    }
                    NavigationLink(destination: PGGridView()) {
                        Text("Grid")
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
