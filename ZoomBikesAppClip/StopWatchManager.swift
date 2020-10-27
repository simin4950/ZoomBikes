//
//  StopWatchManager.swift
//  ZoomBikesAppClip
//
//  Created by Capstone on 10/26/20.
//

import SwiftUI

enum stopWatchMode {
    case running
    case stopped
    case paused
}

class StopWatchManager:ObservableObject {
    @Published var mode: stopWatchMode = .stopped
    @Published var secondsElapsed = 0.0
    @Published var cost = 0.0
    
    var timer = Timer()
    
    func start() {
        print("timer started")
        self.mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.secondsElapsed = self.secondsElapsed + 1.0
        }
    }
    
    func stop() {
        print(self.secondsElapsed)
        self.cost = 2 + ((self.secondsElapsed/60)*0.25)
        print(self.cost)
        timer.invalidate()
        print("timer stopped")
        self.mode = .stopped
    }
}
