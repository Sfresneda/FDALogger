//
//  File.swift
//  
//
//  Created by Sergio Fresneda on 23/9/23.
//

import Foundation
import OSLog

/// Log Category Definition
public protocol Loggable {

    /// Log category `rawValue`, see `LogCategory`
    var logCategory: String { get }

    /// Log type, see `OSLogType`
    var logType: OSLogType { get }
}
