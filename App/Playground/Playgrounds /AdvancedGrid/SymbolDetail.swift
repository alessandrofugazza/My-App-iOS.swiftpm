import SwiftUI

struct SymbolDetail: View {
    var symbol: Symbol
    
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        SymbolDetail(symbol: Symbol(name: "lungs.fill"))
    }
}

