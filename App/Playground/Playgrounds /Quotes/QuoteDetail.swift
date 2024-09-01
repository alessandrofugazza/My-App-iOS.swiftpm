import SwiftUI

struct QuoteDetail : View {
    var quote: Quote
    
    var body : some View {
        Text(quote.text)
    }
}
