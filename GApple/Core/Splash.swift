//
//  Splash.swift
//  GApple
//
//  Created by 한재형 on 2023/08/17.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.77, blue: 0.31)
                .ignoresSafeArea()
            Text("Weeing")
                .foregroundColor(.white)
                .font(.custom("Nunito-Black", size: 45))
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
