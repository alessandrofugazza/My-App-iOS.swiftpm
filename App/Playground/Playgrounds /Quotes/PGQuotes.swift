import SwiftUI

struct PGQuotes : View {
    @State private var isAddingQuote = false
    @State private var selectedQuote: Quote?
    @State private var isEditing = false

    
    @State private var quotes = [
        Quote(text: "You know, hope is a mistake. If you can't fix what's broken… you'll go insane."),
        Quote(text: "コノママジャダメ"),
        Quote(text: "The man who seeks excuses for his actions is doomed to fail."),
        Quote(text: "Their gross misconduct almost cost us our home, but has given us a renewed sense of purpose and tempered in the fires of adversity, our will is forged anew."),
        Quote(text: "Fear is born of uncertainty; we fear nothing because our purpose is clear and our path is certain."),
        Quote(text: "Were it so easy."),
        Quote(text: "Sorrow is knowledge: they who know the most must mourn the deepst o'er the fatal truth, the tree of knowledge is not that of life."),
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
                        .overlay(alignment: .topTrailing) {
                            if isEditing {
                                Button {
                                    remove(quote: quote)
                                } label: {
                                    Image(systemName: "xmark.square.fill")
                                        .font(.title)
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(.white, Color.red)
                                }
                            }
                        }
                        
                    }
                
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isAddingQuote = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button(isEditing ? "Done" : "Edit") {
                    withAnimation {
                        isEditing.toggle()
                    }
                }
            }

        }
        .sheet(isPresented: $isAddingQuote, onDismiss: addQuote) {
            QuotePicker(quote: $selectedQuote)
        }
        
    }
    
    func addQuote() {
        guard let name = selectedQuote else { return }
        withAnimation {
            quotes.insert(name, at: 0)
        }
    }
    
    func remove(quote: Quote) {
        guard let index = quotes.firstIndex(of: quote) else { return }
        withAnimation {
            _ = quotes.remove(at: index)
        }
    }
}

struct PGQuotes_Previews: PreviewProvider {
    static var previews: some View {
        PGQuotes()
    }
}
