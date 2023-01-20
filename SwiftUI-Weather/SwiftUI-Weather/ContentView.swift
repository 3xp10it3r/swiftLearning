//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Digvijay Gupta on 20/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack(spacing: 10) {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOftheWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOftheWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOftheWeek: "Thu", imageName: "wind.snow", temperature: 55)
                    WeatherDayView(dayOftheWeek: "FRI", imageName: "sunset.fill", temperature: 60)
                    WeatherDayView(dayOftheWeek: "SAT", imageName: "snow", temperature: 25)

                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    weatherButton(title: "Change Day Time",                 textColor: .blue,
                                  backgroundColor: .white)
                }
                    
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOftheWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOftheWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight : Bool
    
    var body: some View {
        LinearGradient(colors: [ isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")],
                       startPoint: .leading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView : View {
    
    var cityName : String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design:.default))
            .foregroundColor(.white)
            .padding()
    }
}


struct MainWeatherStatusView : View {
    var imageName: String
    var temperature : Int
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}
