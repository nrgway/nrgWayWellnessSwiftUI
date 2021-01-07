//
//  SignUpViewModel.swift
//  nrgWayWellness
//
//  Created by Hosein Alimoradi on 10/17/1399 AP.
//  Copyright © 1399 AP wellness. All rights reserved.
//
 
import Combine
import SwiftUI

class SignUpViewModel: ObservableObject {
    private let url = "https://app.nrgway.com/api/v1/auth/login"
    private var loginAnyCancellable: AnyCancellable?
    private var cancellableSet: Set<AnyCancellable> = []
    @Published var state = State.idle
     
    // MARK: -  InvitationCodeView input
    @Published var invitationCode: String = ""
    @Published var invitationCodeIsValid: Bool = false
    
    // MARK: -  GetInformationSignUpView input
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email: String = ""
    @Published var cellPhone: String = ""
    @Published var deficaltyLevel: String = ""
    @Published var isGetInformationSignUpViewValid: Bool = false
     
    // MARK: -  FinishSignUpView input
    @Published var password = ""
    @Published var passwordAgain = ""
    @Published var isFinishSignUpViewValid: Bool = false
    
    
    // MARK: - InvitationCodeView
    var isInvitationCodeViewValidPublisher: AnyPublisher<Bool, Never> {
        
        return $invitationCode
            .map { name in
                guard name.count != 0 else {
                    self.invitationCodeIsValid = false
                    return false
                }
                self.invitationCodeIsValid = true
                return true
        }
        .eraseToAnyPublisher()
    }
     
    // MARK: - GetInformationSignUpView
    private var isFirstNameValidPublisher: AnyPublisher<Bool, Never> {
      $firstName
        .debounce(for: 0.8, scheduler: RunLoop.main)
        .removeDuplicates()
        .map { input in
          return input.count >= 3
        }
        .eraseToAnyPublisher()
    }
    
    private var isLastNameValidPublisher: AnyPublisher<Bool, Never> {
      $lastName
        .debounce(for: 0.8, scheduler: RunLoop.main)
        .removeDuplicates()
        .map { input in
          return input.count >= 3
        }
        .eraseToAnyPublisher()
    }    
    
    private var isFullNameValidPublisher: AnyPublisher<Bool, Never> {
        Publishers.CombineLatest(isFirstNameValidPublisher,
                                  isLastNameValidPublisher)
          .map { firstNameIsValid,
                 lastNameIsValid in
            return (firstNameIsValid && lastNameIsValid)
          }
        .eraseToAnyPublisher()
    }
    
    private var isCellPhoneValidPublisher: AnyPublisher<Bool, Never> {
      $cellPhone
        .debounce(for: 0.8, scheduler: RunLoop.main)
        .removeDuplicates()
        .map { input in
            return  self.isValidPhone(phone: input)
        }
        .eraseToAnyPublisher()
    }
    
    private var isEmailValidPublisher: AnyPublisher<Bool, Never> {
      $email
        .debounce(for: 0.8, scheduler: RunLoop.main)
        .removeDuplicates()
        .map { input in
            return self.isValidEmail(email: input)
        }
        .eraseToAnyPublisher()
    }
 
    
    private var isDifficultyLevelValidPublisher: AnyPublisher<Bool, Never> {
      $deficaltyLevel
        .debounce(for: 0.8, scheduler: RunLoop.main)
        .removeDuplicates()
        .map { input in
            return (input.count == 1)
        }
        //(input == 3 || input == 2 || input == 1)
        .eraseToAnyPublisher()
    }
    
    private var isGetInformationSignUpViewValidPublisher: AnyPublisher<Bool, Never> {
      Publishers.CombineLatest4(isFullNameValidPublisher,
                                isCellPhoneValidPublisher,
                               isEmailValidPublisher,
                               isDifficultyLevelValidPublisher)
        .map { fullNameIsValid,
               cellPhoneIsValid,
               emailIsValid,
               difficultyLevel in
          return fullNameIsValid && cellPhoneIsValid &&  emailIsValid && difficultyLevel
        }
      .eraseToAnyPublisher()
    }
    
    
    // MARK: - FinishSignUpView
    private var isPasswordEmptyPublisher: AnyPublisher<Bool, Never> {
      $password
        .debounce(for: 0.8, scheduler: RunLoop.main)
        .removeDuplicates()
        .map { password in
          return password == ""
        }
        .eraseToAnyPublisher()
    }

    private var arePasswordsEqualPublisher: AnyPublisher<Bool, Never> {
      Publishers.CombineLatest($password, $passwordAgain)
        .debounce(for: 0.2, scheduler: RunLoop.main)
        .map { password, passwordAgain in
          return password == passwordAgain
        }
        .eraseToAnyPublisher()
    }
    
//    private var isPasswordStrongEnoughPublisher: AnyPublisher<Bool, Never> {
//      passwordStrengthPublisher
//        .map { strength in
//          print(Navajo.localizedString(forStrength: strength))
//          switch strength {
//          case .reasonable, .strong, .veryStrong:
//            return true
//          default:
//            return false
//          }
//        }
//        .eraseToAnyPublisher()
//    }
//
    
//    private var isPasswordValidPublisher: AnyPublisher<PasswordCheck, Never> {
//      Publishers.CombineLatest(isPasswordEmptyPublisher, arePasswordsEqualPublisher)
//        .map { passwordIsEmpty, passwordsAreEqual in
//          if (passwordIsEmpty) {
//            return .empty
//          }
//          else if (!passwordsAreEqual) {
//            return .noMatch
//          }
//          else if (!passwordIsStrongEnough) {
//            return .notStrongEnough
//          }
//          else {
//            return .getInformationSignUpViewInputsIsValid
//          }
//        }
//        .eraseToAnyPublisher()
//    }
    
    private var isPasswordValidPublisher: AnyPublisher<Bool, Never> {
      Publishers.CombineLatest(isPasswordEmptyPublisher, arePasswordsEqualPublisher)
        .map { passwordIsEmpty, passwordsAreEqual in
          if (passwordIsEmpty) {
            return false
          }
          else if (!passwordsAreEqual) {
            return false
          }
          else {
            return true
          }
        }
        .eraseToAnyPublisher()
    }
    enum PasswordCheck {
      case getInformationSignUpViewInputsIsValid
      case empty
      case noMatch
      //case notStrongEnough
    }
 
    // MARK: - method of change states
    func login(){
        self.state = State.tokenIsValid
    }
    
    func isValidPhone(phone: String) -> Bool {
            let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
            let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
            return phoneTest.evaluate(with: phone)
    }

    func isValidEmail(email: String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailTest.evaluate(with: email)
    }
    
    init() {
        isInvitationCodeViewValidPublisher
          .receive(on: RunLoop.main)
          .assign(to: \.invitationCodeIsValid, on: self)
          .store(in: &cancellableSet)
        
        isGetInformationSignUpViewValidPublisher
          .receive(on: RunLoop.main)
          .assign(to: \.isGetInformationSignUpViewValid, on: self)
          .store(in: &cancellableSet)
        
        isPasswordValidPublisher
            .receive(on: RunLoop.main)
            .assign(to: \.isFinishSignUpViewValid, on: self)
            .store(in: &cancellableSet)
        
    }
    
     
}

// MARK: - Inner Types

extension SignUpViewModel {
    enum State {
        case idle
        case loading
        case tokenIsValid
        case error(Error)
    }
}
