import SwiftUI

/// Unique visual identity for Physical Therapy Reps: recovery blue-violet with motivational gold.
enum Theme {
    static let accent = Color(hex: "#4C5FA3")
    static let accentSecondary = Color(hex: "#E0A63E")
    static let background = Color(hex: "#F0F1FA")
    static let ink = Color(hex: "#161A2E")

    static var titleFont: Font {
        Font.system(.largeTitle, design: .rounded).weight(.bold)
    }

    static var bodyFont: Font {
        Font.system(.body, design: .rounded)
    }

    static var cardCornerRadius: CGFloat { 18 }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
