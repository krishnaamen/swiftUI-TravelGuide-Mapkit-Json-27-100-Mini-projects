//
//  ContentView.swift
//  firstSwiftUIProject
//
//  Created by Macbook on 26/07/2021.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
            .resizable()
            .scaledToFit()
        
            Text(location.name )
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            
            Text(location.country)
            .bold()
            .fontWeight(.black)
            
            Text("Det skotske højland (en: The Highland Council Area) er den region, som udgør den barske nordlige del af det skotske fastland, hvor de sagnomsuste highlanders, højlændere kommer fra.Skotland består traditionelt af tre hoveddele: lavlandet, højlandet og øerne. Hovedparten af befolkningen bor i lavlandet, hvor de større byer Edinburgh og Glasgow ligger. Det skotske højland er tyndt befolket og har fortsat en helt anden kultur end lavlandet.Inverness bliver regnet som 'hovedstaden' for højlandet. Traditionelt skiller man det skotske højland fra lavlandet ved at tegne en nordvestlig linje fra Dumbarton til Stonehaven. Nogle af øerne, som Hebriderne, bliver regnet med til højlandet, mens Orkneyøerne og Shetland ikke gør.")
                .padding(.horizontal)
            Text("Did you know ?")
                .font(.title3)
                .bold()
            Text("The area is very sparsely populated, with many mountain ranges dominating the region, and includes the highest mountain in the British Isles, Ben Nevis. During the 18th and early 19th centuries the population of the Highlands rose to around 300,000, but from c. 1841 and for the next 160 years, the natural increase in population was exceeded by emigration (mostly to Canada, the United States, Australia and New Zealand, and migration to the industrial cities of Scotland and England.) The area is now one of the most sparsely populated in Europe. At 9.1/km2 (24/sq mi) in 2012, the population density in the Highlands and Islands is less than one seventh of Scotland's as a whole, comparable with that of Bolivia, Chad and Russia.")
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
