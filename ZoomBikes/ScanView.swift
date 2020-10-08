//
//  ScanView.swift
//  ZoomBikes
//
//  Created by Capstone on 10/5/20.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        ZStack{
            Image("scan-bg")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("nfc-tag")
                    .padding(.top, 10)
                    .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 60)
                    .background(Color.pink)
                    .cornerRadius(50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.black, lineWidth: 5)
                    )
                Text("")
                HStack{
                    Text(" 1 2 3 4 ")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(50)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.black, lineWidth: 5)
                            )
                        
                    Text("")
                    Image(systemName: "flashlight.on.fill")
                        .resizable()
                        .frame(width: 15.0, height: 32.0)
                        .padding()
                        .padding(.horizontal, 46)
                        .background(Color.pink)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.black, lineWidth: 5)
                        )
                }
                Spacer()
            }
            

        }
    }
}

struct ScanView_Preview: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
