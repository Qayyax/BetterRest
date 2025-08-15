//
//  ContentView.swift
//  BetterRest
//
//  Created by Qayyax on 8/14/25.
//

import SwiftUI

struct ContentView: View {
  @State private var sleepAmount = 8.0
  @State private var wakeUp = Date.now
  
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
          Text("Hello, world!")
          HStack {
            Spacer()
            Stepper("\(sleepAmount.formatted()) hours:", value: $sleepAmount, in: 4...12, step: 0.25)
              .padding()
            
            Spacer()
          }
          DatePicker("Please enter date:", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
            .labelsHidden()
          DatePicker("Please enter date:", selection: $wakeUp,  displayedComponents: .hourAndMinute)
            .labelsHidden()
          
          Text(Date.now, format: .dateTime.day().month().year().hour())
          Text(Date.now.formatted(date: .long, time: .shortened))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
