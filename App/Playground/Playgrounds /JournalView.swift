import SwiftUI

struct JournalView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Journal")
                    .font(.largeTitle)
                Text("感情ゼロ")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                Text("Monday, August 26, 2024")
                    .italic()
                    .padding([.top, .bottom])
                Text("2AM. Woke up 2 hours ago. Nightmares won't stop. Panic attacks won't stop.")
                    .padding(.bottom)
                Text("Just adding this entry to test this view. I like the aesthetic effect of it. Hardcoding this stuff makes me sick though. Luckily it's temporary. I miss autocorrect already.")
                    .padding(.bottom)
                Text("The date at the top is a nice touch don't you think?")
                    .padding(.bottom)
                Text("My mistake was not having a humble approach to life. Can't undo the past though. And it's too late to change.")
                    .padding(.bottom)

            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()
        }
        .background(Color.purple
            .opacity(0.5)
            .saturation(0.7)
        )
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
