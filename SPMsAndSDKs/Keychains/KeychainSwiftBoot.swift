//
//  KeychainSwiftBoot.swift
//  SPMsAndSDKs
//
//  Created by Алан Парастаев on 26.11.2025.
//

// По структуре Keychain схож с UserDefaults и AppStorage, только в Keychain данные шифруются
// Keychain сохраняется между устройствами(если устройства под одним акаунтом) ,
//Keychain сохраняется на устройстве после удаления приложения. Если к примеру пользователь удалит придложение и позже снова его скачает, все что есть в вашем Keychain iCloud автоматически появится заново
// Не хранить в Keychain все подряд , только важные данные !

import SwiftUI
import KeychainSwift

struct KeychainSwiftBoot: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    KeychainSwiftBoot()
}
