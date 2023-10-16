import Foundation

class SignUpViewModel: ObservableObject {

    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""

    func signup() {
        SignUpAction(
            parameters: SignUpRequest(
                email: email,
                password: password
            )
        ).call { _ in
            // Login successful, navigate to the Home screen
        }
    }
    
}
