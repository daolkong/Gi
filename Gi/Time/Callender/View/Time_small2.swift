////
////  Time_small2.swift
////  Gi
////
////  Created by Daol on 2023/07/02.
////
//
//import SwiftUI
//
//struct Time_small2: View {
//    
//    @State var currentDate: Date = Date()
//
//    var body: some View {
//        ZStack {
//                VStack(spacing: 20) {
//                    Time_Callender(currentDate: $currentDate, isCalenderTapped: $isCalenderTapped)
//                }
//                .padding(.vertical)
//
//            VStack {
//                Spacer()
//                HStack {
//                    Spacer()
//
//                    Button {
//
//                    } label: {
//
//                        ZStack {
//                            Circle()
//                                .frame(width: 43, height: 43)
//                                .foregroundColor(Color(hex: 0x5762EA))
//                                .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 3)
//
//                            Image("plus")
//                                .resizable()
//                                .frame(width: 15, height: 15)
//
//
//                        }
//                    }
//                    .padding(.bottom, 150)
//
//                    .padding(.trailing, 35)
//
//
//                }
//            }
//        }
//    }
//}
//struct Time_small2_Previews: PreviewProvider {
//    static var previews: some View {
//        Time_small2()
//    }
//}
