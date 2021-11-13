//
//  MapContainerView.swift
//  PandemicVisualiser
//
//  Created by Олександр Грибинюк on 13.11.2021.
//

import SwiftUI

struct MapContainerView: View {
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        MapView(countryData: $covidFetch.allCoutries)
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
