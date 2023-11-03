//
//  SettingsScreen.swift
//  Cookify
//
//  Created by Jamie Hackney on 10/30/23.
//

import SwiftUI

struct SettingsScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Settings")
        
        // back to sign up button
        Text("back to profile")
            .font(.system(size: 15))
            .frame(maxWidth: .infinity, maxHeight: 60)
            .foregroundColor(Color(red: 0.6, green: 0.655, blue: 0.6))
            .underline()
            .onTapGesture {
                self.presentationMode.wrappedValue.dismiss()
            }
    }
}

#Preview {
    SettingsScreen()
}
