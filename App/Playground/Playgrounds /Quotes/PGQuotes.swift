import SwiftUI

struct PGQuotes : View {
    @State private var quotes = [
        Quote(text: "You know, hope is a mistake. If you can't fix what's broken… you'll go insane."),
        Quote(text: "コノママジャダメ"),
        Quote(text: "The man who seeks excuses for his actions is doomed to fail."),
        Quote(text: "Their gross misconduct almost cost us our home, but has given us a renewed sense of purpose and tempered in the fires of adversity, our will is forged anew."),
        Quote(text: "Fear is born of uncertainty; we fear nothing because our purpose is clear and our path is certain."),
        Quote(text: "Were it so easy."),
    ]
    
    var body : some View {
        VStack {

                List {
                    ForEach(quotes) { quote in
                        NavigationLink {
                            QuoteDetail(quote: quote)
                        } label: {
                            Text(quote.text)
                        }
                        
                    }
                
            }
        }
    }
}

struct PGQuotes_Previews: PreviewProvider {
    static var previews: some View {
        PGQuotes()
    }
}
