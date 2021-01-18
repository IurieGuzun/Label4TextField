//
//  AppView.swift
//  Label4TextField
//
//  Created by Iurie Guzun on 2021-01-18.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct AppView: View {
//    @available(iOS 13.0.0, *)
    var body: some View {
        print("AppView Accessed!")
        return Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .fontWeight(.heavy)
            .foregroundColor(.green)
            .background(Color.blue)
    }
}

struct AppView_Previews: PreviewProvider {
//    @available(iOS 13.0.0, *)
    static var previews: some View {
        AppView()
    }
}
