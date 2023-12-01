//
//  SettingsViewModel.swift
//  Cookify
//
//  Created by jake gilbert on 11/30/23.
//

import Foundation



@MainActor
final class SettingsViewModel: ObservableObject {
    
    func logOut() throws {
        try AuthenticationManager.shared.signOut()
    }
}
