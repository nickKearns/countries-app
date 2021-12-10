//
//  Apollo.swift
//  CountriesApp
//
//  Created by Nicholas Kearns on 11/22/21.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    lazy var apollo  = ApolloClient(url: URL(string: "https://countries.trevorblades.com/")!)
    
    private init() { }
}
