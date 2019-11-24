//
//  ContentView.swift
//  NewsAppSiftUI
//
//  Created by Md Zahidul Islam Mazumder on 20/11/19.
//  Copyright © 2019 Md Zahidul Islam Mazumder. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManagement = NetworkManagement()
    var body: some View {
        
        NavigationView{
            List (networkManagement.posts) {p in
                
                NavigationLink(destination: DetailsView(url: p.url ?? "https://www.youtube.com/watch?v=C5xxrCj8LC0")){
                    HStack {
                        Text("\(p.points)")
                        Text(p.title)
                    }
                }
                
                
                }
        .navigationBarTitle(Text("Hacker News"))
        
        }
        .onAppear {
            self.networkManagement.fetchData()
        }
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
