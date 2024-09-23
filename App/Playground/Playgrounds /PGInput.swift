import SwiftUI

struct PGInput: View {
    @State private var userInput: String = ""  // Variable to store the user's input
    
    var body: some View {
        VStack {
            // TextField for user input
            TextField("Enter text", text: $userInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())  // Adds some styling to the text field
            
            // Display the stored input
            Text("You entered: \(userInput)")
                .padding()
        }
        .padding()
    }
}

struct PGInput_Previews: PreviewProvider {
    static var previews: some View {
        PGInput()
    }
}
