//
//  DetailsView.swift
//  NewsAppSiftUI
//
//  Created by Md Zahidul Islam Mazumder on 21/11/19.
//  Copyright © 2019 Md Zahidul Islam Mazumder. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    let url:String
    var body: some View {
        Webview(url: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://google.com")
    }
}
