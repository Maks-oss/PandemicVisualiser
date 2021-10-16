//
//  ContentView.swift
//  PandemicVisualiser
//
//  Created by Maksimus on 06.10.2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    //init API
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        Text("\(covidFetch.totalData.confirmed)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
