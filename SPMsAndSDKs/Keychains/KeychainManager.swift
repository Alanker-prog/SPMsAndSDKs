//
//  KeychainManager.swift
//  SPMsAndSDKs
//
//  Created by Алан Парастаев on 28.11.2025.
//

import Foundation
import KeychainSwift

protocol KeychainService {
    func set(_ value: String, for key: String)
    func get(_ key: String) -> String?
    func delete(_ key: String)
}

final class KeychainManager: KeychainService {

    static let shared = KeychainManager()
    private init() {}

    private let keychain = KeychainSwift()

    func set(_ value: String, for key: String) {
        keychain.set(value, forKey: key)
    }

    func get(_ key: String) -> String? {
        keychain.get(key)
    }

    func delete(_ key: String) {
        keychain.delete(key)
    }
}
