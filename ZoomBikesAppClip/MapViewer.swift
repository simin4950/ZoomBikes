//
//  MapViewer.swift
//  ZoomBikesAppClip
//
//  Created by Capstone on 10/5/20.
//

import SwiftUI
import MapKit

struct MapViewer: View {
    var body: some View {
        ZStack{
            MapView(coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), name: "nothing")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                VStack{
                    Text("Bike Details")
                        .font(.largeTitle)
                        .foregroundColor(Color.pink)
                    HStack{
                        VStack{
                            HStack{
                                Text(" ")
                                Text("$2.00")
                                    .foregroundColor(.white)
                            }
                            HStack{
                                Text("+")
                                    .foregroundColor(.pink)
                                Text("$0.25")
                                    .foregroundColor(.white)
                            }
                        }
                        Image("bike")
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack{
                            Text("100%")
                                .padding(.top, 5)
                                .padding(.bottom, 5)
                                .padding(.horizontal, 10)
                                .background(Color.green)
                                .cornerRadius(50)
                            Text("6.2 mile range")
                                .foregroundColor(.white)
                        }
                        
                    }
                    NavigationLink(
                        destination: PayView(),
                        label: {
                            Text("RENT")
                                .padding(.horizontal, 60)
                                .padding()
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .background(Color.pink)
                                .cornerRadius(50)
                        })
                }
                
                .padding()
                .padding(.horizontal, 70)
                .background(Color.black)
                .cornerRadius(50)
            }
        }
    }
}

struct MapViewer_Previews: PreviewProvider {
    static var previews: some View {
        MapViewer()
    }
}