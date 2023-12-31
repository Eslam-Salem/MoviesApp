//
//  MoviesSearchBarView.swift
//  JahezTask
//
//  Created by Eslam Salem on 30/12/2023.
//

import SwiftUI

struct MoviesSearchBarView: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(8)
                .background(Color.appDarkGray)
                .foregroundColor(.white)
                .cornerRadius(8)
                .disableAutocorrection(true)

            Button(action: {
                text = ""
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
                    .padding(8)
            }
            .disabled(text.isEmpty)
        }
    }
}

#Preview {
    MoviesSearchBarView(text: .constant(""))
}
