//
//  GreenView.swift
//  SwiftUI-TabView
//
//  Created by Digvijay Gupta on 23/01/23.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.green)
            Text("3")
                .font(.system(size: 70 , weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
