//
//  AccountsManagerTests.swift
//  CryptoFolio
//
//  Created by Preslav Rachev on 30.10.17.
//  Copyright © 2017 Preslav Rachev. All rights reserved.
//

import XCTest
@testable import CryptoFolio

class AccountsManagerTests: XCTestCase {
    func testStoringAndRetrievingOfCredentials() {
        let apiKey = "testApiKey"
        let apiSecret = "testApiSecret"
        let accountsManager: AccountsManager = AccountsManager.sharedInstance
        accountsManager.storeCredentials(for: SupportedMarkets.poloniex, apiKey: apiKey, apiSecret: apiSecret)
        
        let resultCredentials: Credentials = accountsManager.getCredentials(for: SupportedMarkets.poloniex)!
        XCTAssertEqual(resultCredentials.apiKey, apiKey)
        XCTAssertEqual(resultCredentials.apiSecret, apiSecret)
    }
}
