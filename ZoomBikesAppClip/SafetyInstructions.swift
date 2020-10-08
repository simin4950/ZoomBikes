//
//  SafetyInstructions.swift
//  ZoomBikesAppClip
//
//  Created by Capstone on 10/5/20.
//

import SwiftUI

struct SafetyInstructions: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                Image("bike")
                Text("How it Works:")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                HStack{
                    Image("check")
                    Text("Find a bike")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                }
                HStack{
                    Text("Use ")
                        .font(.title)
                        .foregroundColor(.white)
                    Image("apple")
                    Text(" Pay")
                        .font(.title)
                        .foregroundColor(.white)
                }
                Text("Unlock + Ride")
                    .font(.title)
                    .foregroundColor(.white)
                Text("")
                Text("Lock it up in")
                    .font(.title)
                    .foregroundColor(.white)
                Text("a bike zone")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                VStack{
                    NavigationLink(
                        destination: MapViewer(),
                        label: {
                            Text("LET'S GO")
                                .padding()
                                .padding(.horizontal, 50)
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .background(Color.pink)
                                .cornerRadius(50)
                        })
                }
                
            }
        }
        
        
    }
}

struct SafetyInstructions_Previews: PreviewProvider {
    static var previews: some View {
        SafetyInstructions()
    }
}
