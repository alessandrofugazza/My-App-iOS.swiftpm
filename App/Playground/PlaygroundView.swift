import SwiftUI

struct PlaygroundView: View {
    var body: some View {
        VStack {
            
            Image("MachineLifeformHead")
                .resizable()
                .scaledToFit()
            //            .scaledToFill()
            Text("こんにちは。")
                .font(.largeTitle)
        }
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
