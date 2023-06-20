//
//  ContentView.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//

import SwiftUI

struct TimeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Time_info()
                    .navigationBarBackButtonHidden(true)
                    
                Spacer()
                    .frame(height: 20)
                
                Time_TimeBoxPart()
                
                Spacer()
                    .frame(height: -20)
                
                Time_Callender()
                    .offset(y:-20)
                
                Spacer()
                    .frame(height: 0)
                
            }
        }
    }

}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
