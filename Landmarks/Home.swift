//
//  Home.swift
//  Landmarks
//
//  Created by tvphuoc on 4/7/20.
//  Copyright © 2020 tvphuoc. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    @State var showingProfile = false
    
    var profileButton: some View {
        Button(action: {self.showingProfile.toggle()}){
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
            .accessibility(label: Text("User Profile"))
            .padding()
        }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData, by: {$0.category.rawValue}
        )
    }
    
    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }
    
    var body: some View {
        NavigationView {
            List{
                FeaturedLandmarks(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                NavigationLink(destination: LandmarkList()){
                    Text("See All")
                }
            }
            .navigationBarTitle(Text("Featured"))
            .navigationBarItems(trailing: profileButton)
            .sheet(isPresented: $showingProfile){
                Text("User profile")
            }
        }
        
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
