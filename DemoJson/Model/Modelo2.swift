//
//  Modelo2.swift
//  DemoJson
//
//  Created by Aguid Ramirez Sanchez on 22/02/24.
//

import Foundation

struct Modelo2: Decodable{
    var data: [UserList]
}

struct UserList: Decodable{
    var id: Int
    var first_name: String
    var email: String
    var avatar:String
}
