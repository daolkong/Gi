//
//  Time_infoPart.swift
//  Gi
//
//  Created by Daol on 2023/06/05.
//

import SwiftUI

struct Time_infoPart: View {
    var body: some View {
        HStack {
            Image("del")
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
                .padding(.leading, 27)
            
            Spacer()
                .frame(width: 4)
            
            VStack(alignment: .leading, spacing: -1){
                
                Text("이준후 님")
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: 0xFFBF74))
                    .padding(.bottom, 7)
                    .lineLimit(1)
                
                Divider().opacity(0)
                Text("활기찬 하루를 보내세요!")
                    .font(.system(size: 13))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.bottom, 7)
                    .lineLimit(1)
                
            }
            .padding(.leading, 9.0)
            .frame(height: 40, alignment: .top)
            
            Text("일정추가")
                .font(.system(size: 14))
                .fontWeight(.regular)
                .frame(width: 72, height: 35)
                .foregroundColor(Color(hex: 0x343434))
                .background(Color(hex: 0xFAEBBA))
                .cornerRadius(18)
                .padding(.horizontal, 30)
                .shadow(radius: 2)
        }
    }
}

struct Time_infoPart_Previews: PreviewProvider {
    static var previews: some View {
        Time_infoPart()
    }
}
