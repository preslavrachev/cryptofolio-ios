//: Playground - noun: a place where people can play

import UIKit
import CryptoFolioFramework

var str = "Hello, playground"

let usdt = Currency("USDT")
let t = Transaction(baseCurrency: usdt)

print(t)