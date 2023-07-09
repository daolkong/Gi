//
//  Time_info2.swift
//  Gi
//
//  Created by Daol on 2023/06/11.
//

import SwiftUI

struct Time_info: View {
    @State private var isSettingViewActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                // 내용을 추가하거나 수정할 수 있습니다.
            }
            .navigationBarItems(
                leading: HStack(spacing: 15) {
                    Image("GI 8")
                        .resizable()
                        .frame(width: 29, height: 29)
                    
                    Image("GI 7")
                        .resizable()
                        .frame(width: 58, height: 18)
                }
                .padding(.leading, 27),
                
                trailing: HStack(spacing: 22) {
                    NavigationLink(destination: SettingView()) {
                        Image("set")
                            .resizable()
                            .frame(width: 23, height: 23)
                    }
                    
                    NavigationLink(destination: SettingView()) {
                        Image("alram")
                            .resizable()
                            .frame(width: 22, height: 23)
                    }
                }
            )
        }
    }
}

struct Time_info_Previews: PreviewProvider {
    static var previews: some View {
        Time_info()
    }
}

