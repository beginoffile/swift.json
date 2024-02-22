//
//  Home.swift
//  DemoJson
//
//  Created by Aguid Ramirez Sanchez on 21/02/24.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var login: PostViewModel
    var body: some View {
        NavigationView{
            Text("Bienvenidos")
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

#Preview {
    Home()
}
