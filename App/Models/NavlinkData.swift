import Foundation
import SwiftUI

struct NavlinkData: Identifiable {
    var id = UUID()
    var label: String
    var view: AnyView
}
