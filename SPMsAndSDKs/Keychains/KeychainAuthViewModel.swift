//
//  KeychainAuthViewModel.swift
//  SPMsAndSDKs
//
//  Created by Алан Парастаев on 28.11.2025.
//
import Foundation
import Combine

final class AuthViewModel: ObservableObject {

    @Published var isAuthenticated = false
    @Published var username: String = ""
    @Published var password: String = ""

    private let keychain: KeychainService
    private let tokenKey = "authToken"

    init(keychain: KeychainService = KeychainManager.shared) {
        self.keychain = keychain
        self.isAuthenticated = keychain.get(tokenKey) != nil
    }

    func login() {
        // Имитация успешного логина
        guard !username.isEmpty, !password.isEmpty else { return }

        let fakeToken = "12345-USER-TOKEN"
        keychain.set(fakeToken, for: tokenKey)
        isAuthenticated = true
    }

    func logout() {
        keychain.delete(tokenKey)
        isAuthenticated = false
    }

    func loadAuthState() {
        isAuthenticated = keychain.get(tokenKey) != nil
    }
}
