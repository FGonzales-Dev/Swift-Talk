//
//  TalkTextFieldModifier.swift
//  Talk
//
//  Created by Francis Gonzales on 8/29/23.
//

import SwiftUI

struct TalkTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}

