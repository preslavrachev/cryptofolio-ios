//
//  Transaction.swift
//  CryptoFolio
//
//  Created by Preslav Rachev on 28.11.17.
//  Copyright © 2017 Preslav Rachev. All rights reserved.
//

import Foundation

public struct Transaction {
    public var baseCurrency: Currency
    
    public init(baseCurrency: Currency) {
        self.baseCurrency = baseCurrency
    }
}
