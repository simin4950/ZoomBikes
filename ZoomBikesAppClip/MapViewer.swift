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
                            .foregroundColor(Color("pink"))
                        HStack{
                            VStack{
                                HStack{
                                    Text("$2.00 base")
                                        .foregroundColor(.white)
    
                                }
                                HStack{
                                    Text("+")
                                        .foregroundColor(Color("pink"))
                                    Text("$0.25 /min")
                                        .foregroundColor(.white)
                                }
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                    .frame(width: 70, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("6.2 mile range")
                                    .foregroundColor(.white)
                            }
                            
                        }
                        link(label: "RENT", destination: PayView())
                    }
                    
                    .padding(.vertical, 50)
                    .padding(.horizontal, 70)
                    .background(Color.black)
                    .cornerRadius(50)
                    .offset(y: 50)
                }
            } //body
        }
    
    private func link<Destination: View>(label: String, destination: Destination) -> some View {
            return NavigationLink(destination: destination) {
                HStack{
                    Text(label)
                        .padding(.horizontal, 60)
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .background(Color("pink"))
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
