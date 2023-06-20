//
//  Time_Title.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//

import SwiftUI

struct Time_Title: View {
    var body: some View {
        
        VStack (alignment: .center) {
            Text("06/01")
                .font(.system(size: 13))

            Text("Mon")
                .font(.system(size: 25))
                .fontWeight(.black)
                .foregroundColor(Color(hex: 0x5762EA))
        }
    
    }
}

struct Time_Title_Previews: PreviewProvider {
    static var previews: some View {
        Time_Title()
    }
}
