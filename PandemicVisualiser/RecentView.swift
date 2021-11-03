//
//  ContentView.swift
//  PandemicVisualiser
//
//  Created by Nikita on 18.10.2021.
//

import SwiftUI

struct RecentView: View {
    
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""
    
    var body: some View {
       
        NavigationView {
            
            VStack {
                TotalDataView(totalData: covidFetch.totalData)
                ListHeaderView()
                
                List {
                    ForEach(covidFetch.allCoutries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) {
                            CountryData in
                        CountryDataRowView(countryData: CountryData)
                        }
                }
            }//End pf VStack
        }
        
    }//End of Nav view
}

struct RecentView_Previous: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
