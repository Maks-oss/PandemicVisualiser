//
//  SearchView.swift
//  PandemicVisualiser
//
//  Created by nikita on 07.11.2021.
//

import SwiftUI

struct SearchView: View {
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            TextField("Country: ", text: $searchText)
                .padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
    }
}


