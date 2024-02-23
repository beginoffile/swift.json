//
//  DetalleView.swift
//  DemoJson
//
//  Created by Aguid Ramirez Sanchez on 22/02/24.
//

import SwiftUI

struct DetalleView: View {
    var id: Int
    @StateObject var user = DetalleViewModel()
    var body: some View {
        VStack{
            if user.avatar.isEmpty{
                ProgressView()
            }else{
                Image(systemName: "persona.fill")
                    .data(url: URL(string: user.avatar)!)
                    .frame(width: 130, height: 130)
                    .clipped()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text(user.first_name).font(.largeTitle)
                Text(user.email).font(.title)
            }
            
        }.onAppear{
            user.fetch(id: id)
        }
    }
}
