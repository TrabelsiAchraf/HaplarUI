//
//  HLButton.swift
//  HaplarUI
//
//  Created by Achraf Trabelsi on 12/05/2021.
//

import SwiftUI

public struct HLButton: View {
    private let color: Color
    private let text: String
    private let isHapticsEnabled: Bool
    private let haptics = UIImpactFeedbackGenerator(style: .medium)
    public init(
        color: Color,
        text: String,
        isHapticsEnabled: Bool = false
    ) {
        self.color = color
        self.text = text
        self.isHapticsEnabled = isHapticsEnabled
    }
    public var body: some View {
        Button(action: {
            haptics.impactOccurred()
        }, label: {
            Text(text)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 300, height: 60)
                .background(color)
                .cornerRadius(10)
        })
    }
}

struct HLButton_Previews: PreviewProvider {
    static var previews: some View {
        HLButton(
            color: .red,
            text: "Continue",
            isHapticsEnabled: true
        )
        .previewLayout(.sizeThatFits)
        .padding()
        HLButton(
            color: .orange,
            text: "Done"
        )
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
