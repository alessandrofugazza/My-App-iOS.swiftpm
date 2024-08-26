import SwiftUI

struct PGGridView: View {
    var body: some View {
        Grid {
            GridRow {
                Color.mint
                Color.orange
                Color.pink
            }
        }
    }
}

struct PGGridView_Previews: PreviewProvider {
    static var previews: some View {
        PGGridView()
    }
}
