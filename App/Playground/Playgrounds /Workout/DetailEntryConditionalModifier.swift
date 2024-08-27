// LEARN

import SwiftUI

struct DetailEntryConditionalModifier: ViewModifier {
    let condition: Bool
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(condition ? .primary : .secondary)
            .opacity(condition ? 1.0 : 0.5)
    }
}

extension View {
    func applyConditionalStyle(condition: Bool) -> some View {
        self.modifier(DetailEntryConditionalModifier(condition: condition))
    }
}

