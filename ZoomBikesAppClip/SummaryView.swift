//
//  SummaryView.swift
//  ZoomBikesAppClip
//
//  Created by Capstone on 10/26/20.
//

import SwiftUI

struct SummaryView: View {
    @ObservedObject var stopWatchManager = StopWatchManager()
    var distance = 0.0
    var totalTime = 0.0

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack{
                Text("Ride Summary")
                    .font(.largeTitle)
                    .foregroundColor(Color("pink"))
                    .padding()
                HStack{
                    Text("Total Distance: ")
                        .font(.title)
                        .foregroundColor(Color("pink"))
                    Text(String(format: "%.2f", distance) + " mi")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                }
                .padding()
                
                
                HStack{
                    Text("Total Time: ")
                        .font(.title)
                        .foregroundColor(Color("pink"))
                    Text(String(format: "%.2f", self.stopWatchManager.secondsElapsed/60) + " min")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                }
                .padding()
                
                HStack{
                    Text("Total Cost: ")
                        .font(.title)
                        .foregroundColor(Color("pink"))
                    Text("$" + String(format: "%.2f", self.stopWatchManager.cost))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                }
                .padding()
                                
                Spacer()
                VStack{
                    link(label: "Lock Bike", destination: EndView())
                }
                .onAppear(perform: {
                    self.stopWatchManager.stop()
                })
                
            }
        }
    }
    
    private func link<Destination: View>(label: String, destination: Destination) -> some View {
            return NavigationLink(destination: destination) {
                Text(label)
                    .padding()
                    .padding(.horizontal, 50)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .background(Color("pink"))
                    .cornerRadius(50)

                
                }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
