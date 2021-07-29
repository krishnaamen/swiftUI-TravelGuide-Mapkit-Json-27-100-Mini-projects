//
//  TipsView.swift
//  firstSwiftUIProject
//
//  Created by Macbook on 29/07/2021.
//

import SwiftUI

struct TipsView: View {
    let tips:[Tip]
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
    let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    var body: some View {
        List(tips, id:\.text, children:\.children){
            tip in
            if tip.children != nil {
                Label(tip.text, systemImage:"quote.bubble")
                    .font(.headline)
            } else{
                Text(tip.text)
            }
        }
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
