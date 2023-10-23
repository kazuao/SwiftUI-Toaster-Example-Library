//
//  ContentView.swift
//  Toaster-Example
//
//  Created by kazunori.aoki on 2023/10/23.
//

import SwiftUI
import Toaster

struct ContentView: View {
    @StateObject var toast = ToastMessages()
    
    var body: some View {
        VStack {
            Button("Show Toast") {
                toast.present(.defaultSuccess(text: "Success!"))
            }
            Button("Info Toast") {
                toast.present(.defaultInfo(text: "Info!"))
            }
            Button("Show Toast") {
                toast.present(.defaultError(text: "Error!"))
            }
        }
        .padding()
        .toast(
            toast,
            layout: .init(
                padding: .init(
                    top: 0,
                    leading: 16,
                    bottom: 16,
                    trailing: 16
                )
            )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
