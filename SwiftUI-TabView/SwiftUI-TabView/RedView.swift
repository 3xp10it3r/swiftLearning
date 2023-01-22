//
//  RedView.swift
//  SwiftUI-TabView
//
//  Created by Digvijay Gupta on 23/01/23.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.red)
            Text("1")
                .font(.system(size: 70 , weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
