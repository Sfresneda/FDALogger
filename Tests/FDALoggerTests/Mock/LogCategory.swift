//
//  File.swift
//  
//
//  Created by Sergio Fresneda on 23/9/23.
//

@testable import FDALogger
import Foundation
import OSLog

/// Log Category
public enum LogCategory {

    /// String representation of the category
    public var rawValue: String {
        switch self {
        case .network:
            return "[NETWORK]"
        case .keychain:
            return "[KEYCHAIN]"
        case .router:
            return "[ROUTER]"
        case .coreData:
            return "[COREDATA]"
        }
    }

    /// Network category
    case network(OSLogType)

    /// Keychain category
    case keychain(OSLogType)

    /// Router category
    case router(OSLogType)

    /// CoreData category
    case coreData(OSLogType)
}

// MARK: - Loggable
extension LogCategory: Loggable {

    /// Log category `rawValue`, see `LogCategory`
    public var logCategory: String {
        self.rawValue
    }

    /// Log type, see `OSLogType`
    public var logType: OSLogType {
        switch self {
        case .network(let type),
                .keychain(let type),
                .router(let type),
                .coreData(let type):
            return type
        }
    }
}
