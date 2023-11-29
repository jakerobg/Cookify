import Foundation

//make a codable struct to get data from json THEN populate env. obj



class LoginViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    
    
    //when user hits login button, populates environment object
    func login(with accountObject: AccountObject){
        
        var accountList = [AccountModel]()
        print(email)
        print(password)
        
        //GET data of "Data" type from JSON
        let data = getJSON().convertJSON(forName: "USERS")

        
        //CONVERT DATA TO LIST OF ACCOUNT STRUCTS
        do{
            accountList = try JSONDecoder().decode([AccountModel].self, from: data)
            print("success")
            print(accountList)
        } catch {
            print("Can't make list of accounts")
        }
        
        
        var emailExists = false
        
        //CHECK IF LOGGED IN CORRECTLY
        for acct in accountList{
            
            //IF USERNAME MATCH
            if(acct.email == email){
                
                //IF CORRECT PASSWORD, POPULATE ACCOUNT ENV. OBJ AND NAVIGATE
                if(password == acct.password){
                    print("Logged in successfully!")
                    //still need to navigate - wrap button in loginscreen with ternary operator?
                    
                    //populate accounntObject
                    accountObject.populate(with: acct)
                }
                else{
                    print("Password incorrect. Try again")
                }
                emailExists = true
                break
            }
        }
        //IF CAN'T FIND EMAIL, THROW ERROR
        if(!emailExists) {print("Email/user not found")}
    }
}


    
    
    
    //FOR NOW, WE ARE USING JSON, not LOGINREQUEST ACTION
//
//    func login() {
//        LoginAction(
//            parameters: LoginRequest(
//                email: email,
//                password: password
//            )
//        ).call { _ in
//            // Login successful, navigate to the Home screen
//        }
//    }
    

