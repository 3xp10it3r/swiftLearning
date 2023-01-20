//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Digvijay Gupta on 20/01/23.
//
import SwiftUI

struct weatherButton : View {
    
    var title:String
    var textColor: Color
    var backgroundColor : Color

    
    var body: some View {
        Text(title)
            .frame(width: 280,height: 50)
            .font(.system(size: 20, weight: .bold, design: .default))
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(10)
    }
}
