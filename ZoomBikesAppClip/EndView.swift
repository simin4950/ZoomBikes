//
//  EndView.swift
//  ZoomBikesAppClip
//
//  Created by Capstone on 10/26/20.
//

import SwiftUI

struct EndView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Image("lock")
                Text("Thanks for riding with us!")
                    .foregroundColor(Color.white)
                    .font(.title)
            }
        }
        .navigationBarHidden(true)
        
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView()
    }
}
