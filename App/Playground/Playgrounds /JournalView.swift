import SwiftUI

struct JournalView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Your Story")
                    .font(.largeTitle)
                Text("Your Name")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()
        }
        .background(Image("Purple").opacity(0.5))
    }
}
