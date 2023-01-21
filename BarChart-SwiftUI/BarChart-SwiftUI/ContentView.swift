//
//  ContentView.swift
//  BarChart-SwiftUI
//
//  Created by Digvijay Gupta on 20/01/23.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    let chartData: [cellData] = [
        .init(date: Date.from(year:2023,month:08,day:20), viewsCount: 50000),
        .init(date: Date.from(year:2023,month:07,day:20), viewsCount: 60000),
        .init(date: Date.from(year:2023,month:06,day:20), viewsCount: 55000),
        .init(date: Date.from(year:2023,month:05,day:20), viewsCount: 80000),
        .init(date: Date.from(year:2023,month:04,day:20), viewsCount: 90000),
        .init(date: Date.from(year:2023,month:03,day:20), viewsCount: 50000),
        .init(date: Date.from(year:2023,month:02,day:18), viewsCount: 100000),
        .init(date: Date.from(year:2023,month:01,day:20), viewsCount: 60000)
    ]
    
    var body: some View {
        VStack {
            Chart{
                RuleMark(y: .value("Goal", 70000))
                    .foregroundStyle(Color.mint.gradient)
                    .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                    .annotation(alignment: .leading) {
                        Text("Goal")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                    }
                
                ForEach(chartData) { cell in
                    BarMark(x: .value("Month", cell.date, unit: .month)
                            ,y: .value("Views", cell.viewsCount))
                }
            }
            .frame(height: 180)
            .foregroundStyle(Color.pink.gradient)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct cellData: Identifiable {
    let id  = UUID()
    let date : Date
    let viewsCount : Int
}



