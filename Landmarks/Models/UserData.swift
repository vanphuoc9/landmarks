//
//  UserData.swift
//  Landmarks
//
//  Created by tvphuoc on 4/6/20.
//  Copyright © 2020 tvphuoc. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
    
    
}
