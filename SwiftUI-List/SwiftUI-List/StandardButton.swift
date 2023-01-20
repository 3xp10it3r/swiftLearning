//
//  StandardButton.swift
//  SwiftUI-List
//
//  Created by Digvijay Gupta on 20/01/23.
//

import SwiftUI

struct StandardButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 280,height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
