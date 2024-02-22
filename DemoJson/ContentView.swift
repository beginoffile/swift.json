//
//  ContentView.swift
//  DemoJson
//
//  Created by Aguid Ramirez Sanchez on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var login : PostViewModel
    var body: some View {
        Group{
            if login.authenticated == 0{
               Login()
            }else if login.authenticated == 1{
                Home()
            }else if login.authenticated == 2{
                VStack{
                    Text("Usuario y/o Contraseña Incorrecta")
                    Button(action: {
                        login.authenticated = 0
                    }){
                        Text("Regresar")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
