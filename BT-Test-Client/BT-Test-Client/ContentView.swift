//
//  ContentView.swift
//  BT-Test-Client
//
//  Created by Brent Busby on 10/1/25.
//

import SwiftUI
import BraintreeDataCollector

struct ContentView: View {
    let client = BTDataCollector(authorization: "sandbox_d54x7ckf_hh4cpc39zq4rgjcg")
    @State private var deviceData: String = "Collecting device data..."

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(deviceData)
        }
        .padding()
        .onAppear {
            client.collectDeviceData { deviceData, error in
                if let error {
                    self.deviceData = "Error: \(error.localizedDescription)"
                } else {
                    self.deviceData = deviceData ?? "No device data returned"
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
