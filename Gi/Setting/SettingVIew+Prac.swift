//
//  SettingVIew+Prac.swift
//  Gi
//
//  Created by Daol on 2023/06/13.
//

import SwiftUI

struct SettingVIew_Prac: View {
    @State var isDarkModeOn = false
    @State var isalarmOn = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Toggle("다크모드", isOn: $isDarkModeOn)
                }
                Spacer()
                    .frame(height: 27)
                HStack {
                    Toggle("알림 켜고 끄기", isOn: $isalarmOn)
                }
                
                Spacer()
                    .frame(height: 40)
                
                Divider()
                
                Spacer()
                    .frame(height: 40)
                
                NavigationLink {
                    
                } label: {
                    VStack {
                        HStack {
                            Text("공지사항")
                                .tint(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        
                        Spacer()
                            .frame(height: 27)
                        
                        HStack {
                            Text("개발자에게 문의")
                                .tint(.primary)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                }
                Spacer()
                    .frame(height: 40)
                Divider()
                
                

            }
            .tint(Color(hex: 0x5762EA))
            .padding(.horizontal, 36)
            

        }
        
    }
}

struct SettingVIew_Prac_Previews: PreviewProvider {
    static var previews: some View {
        SettingVIew_Prac()
    }
}
