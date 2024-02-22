//
//  Modelo1.swift
//  DemoJson
//
//  Created by Aguid Ramirez Sanchez on 21/02/24.
//

import Foundation

struct Modelo1: Decodable{
    var id: Int
    var name: String
    var email: String
    var address: Address
}

struct Address:Decodable{
    var street: String
    var geo: Geo
}

struct Geo:Decodable{
    var lat: String
    var lng: String
}
