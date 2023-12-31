//
//  FilterChipsView.swift
//  JahezTask
//
//  Created by Eslam Salem on 30/12/2023.
//

import SwiftUI

struct FilterChipsView: View {
    @Binding var selectedGenres: Set<Int>
    
    let allGenres: [MovieGenre]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(allGenres) { genre in
                    Button(action: {
                        toggleGenreSelection(genre.id)
                    }) {
                        Text(genre.name)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 4)
                            .foregroundColor(selectedGenres.contains(genre.id) ? .black : .white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color.appYellow, lineWidth: 1)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(selectedGenres.contains(genre.id) ? Color.appYellow : Color.clear)
                            )
                    }
                }
            }
            .padding(.vertical, 4)
        }
        .background(Color.black)
    }
    
    private func toggleGenreSelection(_ genreID: Int) {
        if selectedGenres.contains(genreID) {
            selectedGenres.remove(genreID)
        } else {
            selectedGenres.insert(genreID)
        }
    }
}


#Preview {
    FilterChipsView(
        selectedGenres: .constant([1]),
        allGenres:
            [
                MovieGenre(id: 1, name: "Action"),
                MovieGenre(id: 2, name: "Comedy"),
                MovieGenre(id: 3, name: "Drama"),
                MovieGenre(id: 4, name: "SCI")
            ]
    )
}
