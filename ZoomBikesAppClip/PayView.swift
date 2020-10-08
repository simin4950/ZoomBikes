//
//  MapViewer.swift
//  ZoomBikesAppClip
//
//  Created by Capstone on 10/5/20.
//

import SwiftUI
import MapKit

struct PayView: View {
    var body: some View {
        NavigationView{
            ZStack{
                MapView(coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), name: "nothing")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    VStack{
                        HStack{
                            NavigationLink(
                                destination: MapViewer(),
                                label: {
                                    Image("back")
                                })
                            Text("")
                            Text("Payment")
                                .font(.largeTitle)
                                .foregroundColor(Color.pink)
                        }
                        
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
                        // NavigationLink(
                           // destination: PayView(),
                            //label: {
                        HStack{
                            Image("apple")
                            Text(" Pay")
                                .font(.title)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 20)
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(50)
                                
                                    
                           // })
                    }
                    
                    .padding()
                    .padding(.horizontal, 70)
                    .background(Color.black)
                    .cornerRadius(50)
                }
            }
        }
    }
}

struct PayView_Previews: PreviewProvider {
    static var previews: some View {
        PayView()
    }
}
