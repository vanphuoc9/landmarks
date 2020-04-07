//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by tvphuoc on 4/7/20.
//  Copyright © 2020 tvphuoc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList {WatchLandmarkDetail(landmark: $0)}
        .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
        .environmentObject(UserData())
    }
}
