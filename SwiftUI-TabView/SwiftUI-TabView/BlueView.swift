//
//  BlueView.swift
//  SwiftUI-TabView
//
//  Created by Digvijay Gupta on 23/01/23.
//

import SwiftUI

struct BlueView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.blue)
            Text("2")
                .font(.system(size: 70 , weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
