//
//  DemoJsonApp.swift
//  DemoJson
//
//  Created by Aguid Ramirez Sanchez on 21/02/24.
//

import SwiftUI

@main
struct DemoJsonApp: App {
    let login = PostViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
