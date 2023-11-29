//
//  ContentView.swift
//  Cookify
//  The best app to eat food on in 2018
//
//  Created by Jamie Hackney, Jake Gilbert, Mihir Singh on 10/6/23.
//


import SwiftUI

struct ContentView: View {
    
    //MAKE ACCOUNTOBJECT - environment object since amny views need access
    @StateObject var account = AccountObject()
    
    
    var body: some View {
        LoginScreen()
        .environmentObject(account)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
