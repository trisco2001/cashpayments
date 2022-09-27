//
//  CashPayments.swift
//  AppTemplate
//
//  Created by Tristan Leonard on 9/27/22.
//

import Foundation

public enum DrawerType {
    case iot
    case network
}

public struct CashDrawer {
    public let cashDrawerId: Int
    public let name: String
    public let type: DrawerType
}

@available(iOS 13.0.0, *)
@available(macOS 10.15.0, *)
public protocol CashPaymentsProtocol {
    func getDrawers(storeId: String) async throws -> [CashDrawer]
}

@available(iOS 13.0.0, *)
@available(macOS 10.15.0, *)
public class CashPayments: CashPaymentsProtocol {
    public init() { }

    public func getDrawers(storeId: String) async throws -> [CashDrawer] {
        return [
            CashDrawer(cashDrawerId: 1, name: "Dennis Drawer", type: .iot),
            CashDrawer(cashDrawerId: 2, name: "Daniel Drawer", type: .network),
            CashDrawer(cashDrawerId: 3, name: "Suzie Drawer", type: .iot)
        ]
    }
}
