//
//  AccountViewModel.swift
//  Cookify
//
//  Created by jake gilbert on 12/3/23.
//

import Foundation


@MainActor
final class ProfileViewModel: ObservableObject {
    
    @Published private(set) var user: AuthDataResultModel? = nil
    
    func loadCurrentUser() async throws {
        self.user = try AuthenticationManager.shared.getAuthenticatedUser()
    }
}
