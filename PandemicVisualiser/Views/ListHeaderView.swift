//
//  ListHeaderView.swift
//  PandemicVisualiser
//
//  Created by Nikita on 18.10.2021.
//

import SwiftUI

struct ListHeaderView: View {
    var body: some View {
        HStack {
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
                
            Text("Conf.")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.subheadline)
                .frame(maxWidth: .infinity,maxHeight: 40)
                .padding(.leading, 5)
                
            Text("Death")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(maxWidth: .infinity)
                .padding(.leading, 15)

            Text("Recover")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(maxWidth: .infinity)
                .padding(.leading, 15)
        }
        .background(Color.gray)
    }
}

struct ListHeaderView_Preview: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}


