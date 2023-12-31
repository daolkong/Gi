//
//  SettingView.swift
//  Gi
//
//  Created by Daol on 2023/06/10.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Setting_Title()
                Spacer()
                    .frame(height:30)
                
                Setting_sub()
                Spacer()
                    .frame(height: 37)
                
                
                Button {
                    
                } label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(hex: 0x5762EA))
                            .cornerRadius(22)
                            .frame(width: 135, height: 43)
                        
                        Text("로그아웃")
                        
                            .font(.system(size: 18))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        
                        
                        
                    }
                }
               
                Spacer()
                    .frame(height: 55)
            }
            .padding(.bottom,30)

        }

    }
    
    
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
