//
//  Home.swift
//  DemoJson
//
//  Created by Aguid Ramirez Sanchez on 21/02/24.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var login: PostViewModel
    @StateObject var json = Modelo1ViewModel()
    var body: some View {
        NavigationView{
            
            if json.datosModelo.isEmpty{
                ProgressView()
            }else{
                List(json.datosModelo, id:\.id){item in
                    VStack(alignment: .leading){
                        Text(item.name)
                        Text(item.email)
                        Text(item.address.geo.lat)
                    }
                }
                .navigationTitle("JSON")
                .navigationBarItems(leading: Button(action:{
                    UserDefaults.standard.removeObject(forKey: "sesion")
                    login.authenticated = 0
                }){
                    Text("Salir")
                }, trailing:
                                        Button(action:{}){
                    Text("Siguiente")
                })
            }
                
        }
    }
}

#Preview {
    Home()
}
