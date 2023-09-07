//
//  CircularProfileImageView.swift
//  Talk
//
//  Created by Francis Gonzales on 9/7/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
