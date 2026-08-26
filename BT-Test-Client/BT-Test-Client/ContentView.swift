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
//    let client = BTPayPalClient(authorization: "sandbox_d54x7ckf_hh4cpc39zq4rgjcg")
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(client.debugDescription)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
