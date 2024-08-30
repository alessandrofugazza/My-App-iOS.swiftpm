import SwiftUI

struct NavigationTitleModifier: ViewModifier {
    let title: String
    
    func body(content: Content) -> some View {
        content
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
}

extension View {
    func applyNavigationTitleStyle(title: String) -> some View {
        self.modifier(NavigationTitleModifier(title: title))
    }
}

