//
//  AccountsManager.swift
//  CryptoFolio
//
//  Created by Preslav Rachev on 29.10.17.
//  Copyright © 2017 Preslav Rachev. All rights reserved.
//

import Foundation
import SAMKeychain

struct Credentials {
    private static let delimiter = "::CFDELIMITER::"
    
    let apiKey: String
    let apiSecret: String
    
    public static func create(from data: Data) throws -> Credentials {
        if let storedStrings = String(data: data, encoding: .utf8)?.components(separatedBy: Credentials.delimiter) {
            return Credentials(apiKey: storedStrings[0], apiSecret: storedStrings[1])
        }
        
        throw Errors.corruptMarketCredentialsData
    }
    
    public func toData() -> Data {
        let storedString = apiKey + Credentials.delimiter + apiSecret
        return Data(storedString.utf8)
    }
}

class AccountsManager {
    
    static let sharedInstance = AccountsManager()
    
    private init() {}
    
    func storeCredentials(for exchange: SupportedMarkets, apiKey: String, apiSecret: String, account: String = "Default") -> Void {
        let secretData = Credentials(apiKey: apiKey, apiSecret: apiSecret).toData()
        SAMKeychain.setPasswordData(secretData, forService: SupportedMarkets.poloniex.rawValue, account: account)
    }
    
    func getCredentials(for exchange: SupportedMarkets, account: String = "Default") -> Credentials? {
        if let data = SAMKeychain.passwordData(forService: exchange.rawValue, account: account) {
            return try! Credentials.create(from: data)
        }
        
        return nil
    }
}
