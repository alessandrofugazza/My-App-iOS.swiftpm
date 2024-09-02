import SwiftUI

struct QuotePicker: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var quote: Quote?
    
    let pickableQuotes = [
        Quote(text: "tshirt"),
        Quote(text: "eyes"),
        Quote(text: "eyebrow"),
        Quote(text: "nose"),
        
        
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(pickableQuotes) { quote in
                    Button {
                        self.quote = quote
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text(quote.text)
                    }
                    .padding()
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

struct QuotePicker_Previews: PreviewProvider {
    static var previews: some View {
        QuotePicker(quote: .constant(nil))
    }
}


