//
//  LoginViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 9/7/1399 AP.
//  Copyright © 1399 wellness. All rights reserved.
//


import Combine
import SwiftUI

class LoginViewModel: ObservableObject {
    
    private let url = "https://app.nrgway.com/api/v1/auth/login" 
    private var loginAnyCancellable: AnyCancellable?
    private var bag = Set<AnyCancellable>()
    @Published var state = State.idle
    @Published var username: String = ""
    @Published var password: String = ""
    let usernameMessagePublisher = PassthroughSubject<String, Never>()
    let passwordMessagePublisher = PassthroughSubject<String, Never>()
    
    var validatedUsername: AnyPublisher<String?, Never> {
        
        return $username
            .map { name in
                
                guard name.count != 0 else {
                    
                    self.usernameMessagePublisher.send("Username can't be blank")
                    return nil
                }
                
                guard name.count > 2 else {
                    
                    self.usernameMessagePublisher.send("Minimum of 3 characters required")
                    return nil
                }
                
                self.usernameMessagePublisher.send("")
                return name
        }
        .eraseToAnyPublisher()
    }
     
    
    var validatedUserName: AnyPublisher<String?, Never> {
      return $username
        .debounce(for: 0.5, scheduler: RunLoop.main)
        .removeDuplicates()
        .flatMap { username in
          return Future { promise in
            self.usernameAvailable(username) { available in
              promise(.success(available ? username : nil))
            }
          }
      }
      .eraseToAnyPublisher()
    }
    
    
    
    func usernameAvailable(_ username: String, completion: @escaping (Bool) -> ()) -> () {
      DispatchQueue.main .async {
        if (username == "foobar") {
          completion(true)
        } else {
          completion(false)
        }
      }
    }
    
//    
//    var validatedCredentials: AnyPublisher<(String, String)?, Never> {
//      validatedUsername.combineLatest(validatedPassword) { username, password in
//        guard let uname = username, let pwd = password else { return nil }
//        return (uname, pwd)
//      }
//      .eraseToAnyPublisher()
//    }
    func login(){
        self.state = State.tokenIsValid
//        loginAnyCancellable = WebAPI.login(username: "", pass: "String")
//            .receive(on: RunLoop.main)
//            //.map(LoginEntity.init)
//            .eraseToAnyPublisher()
//            .sink(receiveCompletion: { _ in },
//                  receiveValue: {  login in
//                    print(login)
//                    self.state = State.tokenIsValid
//                    //self.formulas = formulalist
//                  }
//            )
    }
    
     
}

// MARK: - Inner Types

extension LoginViewModel {
    enum State {
        case idle
        case loading
        case tokenIsValid
        case error(Error)
    }
}
