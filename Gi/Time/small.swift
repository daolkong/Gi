//
//  small.swift
//  Gi
//
//  Created by Daol on 2023/06/19.
//

import SwiftUI

struct small: View {
    var body: some View {
        NavigationView {
            Time_info()
                .navigationBarTitle(Text("Main View"))
        }
    }
}


struct Time: View {
    @State private var showNextView = false
    
    var body: some View {
        VStack {
            // ...
            Button(action: {
                showNextView = true
            }) {
                Image("set")
            }
            // ...
        }
        .background(
            NavigationLink(destination: NextView(), isActive: $showNextView) {
                EmptyView()
            }
        )
    }
}

struct NextView: View {
    var body: some View {
        Text("Next View")
    }
}

struct small_Previews: PreviewProvider {
    static var previews: some View {
        small()
    }
}
