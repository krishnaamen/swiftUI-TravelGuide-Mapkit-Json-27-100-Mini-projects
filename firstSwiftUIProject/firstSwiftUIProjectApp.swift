//
//  firstSwiftUIProjectApp.swift
//  firstSwiftUIProject
//
//  Created by Macbook on 26/07/2021.
//

import SwiftUI

@main
struct firstSwiftUIProjectApp: App {
    @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            
            TabView{
            NavigationView{
                ContentView(location: locations.primary)
        }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
                
                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                
                
            }
            .environmentObject(locations)
        }
    }
}
