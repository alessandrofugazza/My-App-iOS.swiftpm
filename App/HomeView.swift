import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("My App")
                .font(.largeTitle)
            Text("v1.0.0")
                .font(.caption)
                .padding(.bottom)
            Image("MachineLifeformHead")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.black, style: StrokeStyle(lineWidth: 5))
                )
                .padding(.bottom)
            Text("こんにちは")
                .font(.title)
            Text("元気ですか")
        }
        .padding()
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


