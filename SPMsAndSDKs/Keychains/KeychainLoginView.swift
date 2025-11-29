//
//  KeychainLoginView.swift
//  SPMsAndSDKs
//
//  Created by Алан Парастаев on 28.11.2025.
//
import SwiftUI

struct LoginView: View {

    @StateObject private var vm = AuthViewModel()

    var body: some View {
        VStack(spacing: 16) {

            if vm.isAuthenticated {

                Text("Вы вошли!")
                    .font(.title)

                Button("Выйти") {
                    vm.logout()
                }
                .buttonStyle(.borderedProminent)

            } else {

                TextField("Логин", text: $vm.username)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                SecureField("Пароль", text: $vm.password)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                Button("Войти") {
                    vm.login()
                }
                .buttonStyle(.borderedProminent)

            }
        }
        .animation(.easeInOut, value: vm.isAuthenticated)
    }
}
