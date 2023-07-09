//
//  Time_TimeDay.swift
//  Gi
//
//  Created by Daol on 2023/06/06.
//
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}


struct Time_HyehwaDay: View {
    @EnvironmentObject var timeDataFetcher: TimeDataFetcher
    @Binding var currentDate: Date

    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 288, height: 317)
                .cornerRadius(14)
                .foregroundColor(Color.white)
                .shadow(radius: 3)
            
            VStack {
                Spacer()
                    .frame(height: 16.5)
                
                VStack (alignment: .center) {
                    Text("\(extraDate()[0]).\(extraDate()[1])")                        .font(.system(size: 13))
                    
                    Text("\(getMonthDay(currentDate: currentDate))")                        .font(.system(size: 25))
                        .fontWeight(.black)
                        .foregroundColor(Color(hex: 0x5762EA))
                }
                
                Spacer()
                    .frame(height: 9.5)
                
                VStack(alignment: .leading, spacing: 10) {
                    if let timeschuele = timeDataFetcher.timeData {
                        
                        HStack {
                            Text("\(timeschuele.results[3].properties.랩.richText[0].plainText) 수업" )
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            
                            
                            Text("9:30 - 12:30")
                                .font(.system(size: 15))
                                .fontWeight(.regular)
                                .padding(.leading, 55)
        
                        }
                    }
              
                        if let timeschuele = timeDataFetcher.timeData {
                            Text("\(timeschuele.results[20].properties.dayTime.title [0].plainText)")
                                .font(.system(size: 18))
                                .fontWeight(.regular)


                        }
                }
                .foregroundColor(Color.white)
                .frame(width: 289, height: 103)
                .background(Color(hex: 0xFFBF74))
                .cornerRadius(6, corners: [.topLeft, .topRight])
               
                
                HStack {
                   
                    Text("점심시간")
                        .font(.system(size: 16))
                        .fontWeight(.medium)

                    
                    Spacer()
                        .frame(width: 80)

                    Text("12:30 - 2:00")
                        .font(.system(size: 15))
                        .padding(.leading,15)

                 
                }
                .frame(width: 289, height: 27)
                
             
                VStack(alignment: .leading, spacing: 10) {
                    if let timeschuele = timeDataFetcher.timeData {
                        
                    HStack {
                       
                            Text("\(timeschuele.results[0].properties.랩.richText[0].plainText)")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            
                            Text("2:00 - 5:00")
                            .font(.system(size: 15))
                            .fontWeight(.regular)
                            .padding(.leading, 40)
                            
                        }
                    }
     
                    if let timeschuele = timeDataFetcher.timeData {
                        Text("\(timeschuele.results[21].properties.dayTime.title[0].plainText)")
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
               
                    }
                }
                .foregroundColor(Color.white)
                .frame(width: 289, height: 104)
                .background(Color(hex: 0x5762EA))
                .cornerRadius(14, corners: [.bottomLeft, .bottomRight ])
            }

            
            
        }
     
        
        .offset(x:15)
        
    }
    
    func getMonthDay(currentDate: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        
        let date = formatter.string(from: currentDate)
        
        return date
        
    }
    
    func extraDate() -> [String] {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd"
        
        let date = formatter.string(from: currentDate)
        
        return date.components(separatedBy: "/")
        
    }
}

struct Time_HyehwaDay_Previews: PreviewProvider {
    static var previews: some View {
        Time_HyehwaDay(currentDate: .constant(Date())).environmentObject(TimeDataFetcher())
    }
}

