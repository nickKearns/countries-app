//
//  CountryDetailView.swift
//  CountriesApp
//
//  Created by Nicholas Kearns on 11/22/21.
//

import SwiftUI

struct CountryDetailView: View {
    
    let country: CountryViewModel
    @StateObject private var countryDetailVM = CountryDetailViewModel()
    
    var body: some View {
        VStack {
            Text(countryDetailVM.name)
            Text(countryDetailVM.capital)
            List(countryDetailVM.states , id: \.id) { state in
                Text(state.name)
            }
        }.onAppear(perform: {
            countryDetailVM.getCountryDetailsByCode(code: country.code)
        })
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        CountryDetailView(country: CountryViewModel.defaultCountry)
        
    }
}
