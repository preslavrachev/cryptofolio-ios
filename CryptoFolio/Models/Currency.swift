//
//  Currency.swift
//  CryptoFolio
//
//  Created by Preslav Rachev on 30.11.17.
//  Copyright © 2017 Preslav Rachev. All rights reserved.
//

import Foundation

public struct Currency {
    public let tickerSymbol: String
    
    public init(_ tickerSymbol: String) {
        self.tickerSymbol = tickerSymbol
    }
}
