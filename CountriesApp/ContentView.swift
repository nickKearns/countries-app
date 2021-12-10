//
//  ContentView.swift
//  CountriesApp
//
//  Created by Mohammad Azam on 5/13/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var countryListVM = CountryListViewModel()
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                List(countryListVM.countries, id: \.code) { country in
                    NavigationLink(destination: CountryDetailView(country: country), label:  {
                        HStack {
                            Text(country.emoji)
                            Text(country.name)
                        }
                    })
                    
                }
                
                
            }.onAppear(perform: {
                countryListVM.getAllCountries()
            })
            .navigationTitle("Countries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
