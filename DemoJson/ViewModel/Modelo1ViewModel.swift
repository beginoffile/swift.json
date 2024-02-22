//
//  Modelo1ViewModel.swift
//  DemoJson
//
//  Created by Aguid Ramirez Sanchez on 21/02/24.
//

import Foundation

class Modelo1ViewModel: ObservableObject{
    
    @Published var datosModelo: [Modelo1] = []
    
    init(){
        fetch()
    }
    
    func fetch(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        URLSession.shared.dataTask(with: url){data,_,_ in
            guard let data = data else {return}
            do{
                let json = try JSONDecoder().decode([Modelo1].self, from: data)
                DispatchQueue.main.async{
                    self.datosModelo = json
                }
            }catch let error as NSError{
                print("Error en el json", error.localizedDescription)
            }
            
        }.resume()
    }
}
