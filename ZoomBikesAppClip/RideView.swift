//
//  MapViewer.swift
//  ZoomBikesAppClip
//
//  Created by Capstone on 10/5/20.
//

import SwiftUI
import MapKit

struct RideView: View {
    @ObservedObject var stopWatchManager = StopWatchManager()
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                Image("back")
                    .aspectRatio(contentMode: .fit)
                }
            }
        }
    
    var body: some View {
            ZStack{
                MapView(coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), name: "nothing")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    VStack{
                        HStack{
                            btnBack
                            Text("Ride")
                                .font(.largeTitle)
                                .foregroundColor(Color("pink"))
                        }
                        
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
                        
                        HStack {
                            ZStack {
                                HStack{
                                        Text("")
                                            .font(.title)
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                }.onAppear(perform: {self.stopWatchManager.start()})
                                .padding(.all, 30)
                                .padding(.horizontal, 50)
                                .background(Color("pink"))
                                .cornerRadius(50)
                            
                                HStack{
                                        Text(String(format: "%.2f", stopWatchManager.secondsElapsed/60))
                                            .font(.title)
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                }
                                .padding(.vertical, 20)
                                .padding(.horizontal, 30)
                                .background(Color("pink"))
                                .cornerRadius(50)
                            }
                            
                            link(label: "END", destination: SummaryView(stopWatchManager: self.stopWatchManager))
                        }
                    }
                    
                    .padding(.vertical, 50)
                    .padding(.horizontal, 70)
                    .background(Color.black)
                    .cornerRadius(50)
                    .offset(y: 50)
                }
            }
            .navigationBarHidden(true)
        }
    
    private func link<Destination: View>(label: String, destination: Destination) -> some View {
            return NavigationLink(destination: destination) {
                
                ZStack {
                    HStack{
                            Text(label)
                                .font(.title)
                                .foregroundColor(.white)
                    }.onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                        self.stopWatchManager.stop()
                    })
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20)
                    .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .background(Color("pink"))
                    .cornerRadius(50)
                    
                    HStack{
                        Text(label)
                            .font(.title)
                            .bold()
                            .foregroundColor(Color("pink"))
                    }
                    .padding()
                    .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .background(Color.black)
                    .cornerRadius(50)
                }
                
                }
            }
}



struct RideView_Previews: PreviewProvider {
    static var previews: some View {
        RideView()
    }
}
