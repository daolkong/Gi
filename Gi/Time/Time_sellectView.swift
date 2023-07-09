//
//  Time_sellectView.swift
//  Gi
//
//  Created by Daol on 2023/06/22.
//
import SwiftUI

struct Time_sellectView: View {
    @StateObject var timeDataFetcher = TimeDataFetcher()
    @State private var tabSelection = 1
    
    var body: some View {
        ZStack() {
            TabView(selection: $tabSelection) {
                Time_HyehwaBox()
                    .tag(1)
                Time_Alpha1Box()
                    .tag(2)
                Time_Alpha2Box()
                    .tag(3)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: 393, height: 430)
            .environmentObject(timeDataFetcher)
            
            TimeLinePart_selection(tabSelection: $tabSelection)
                .padding(.leading, -355)
    
        }
    }
}

struct Time_sellectView_Previews: PreviewProvider {
    static var previews: some View {
        Time_sellectView()
    }
}
