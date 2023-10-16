import Foundation

class LoginViewModel: ObservableObject {

    @Published var email: String = ""
    @Published var password: String = ""

    func login() {
        LoginAction(
            parameters: LoginRequest(
                email: email,
                password: password
            )
        ).call { _ in
            // Login successful, navigate to the Home screen
        }
    }
    
}
