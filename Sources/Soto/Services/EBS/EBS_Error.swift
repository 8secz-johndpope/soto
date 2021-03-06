//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

/// Error enum for EBS
public enum EBSErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case concurrentLimitExceededException(message: String?)
    case conflictException(message: String?)
    case internalServerException(message: String?)
    case requestThrottledException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceQuotaExceededException(message: String?)
    case validationException(message: String?)
}

extension EBSErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "ConcurrentLimitExceededException":
            self = .concurrentLimitExceededException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "RequestThrottledException":
            self = .requestThrottledException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceQuotaExceededException":
            self = .serviceQuotaExceededException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension EBSErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .concurrentLimitExceededException(let message):
            return "ConcurrentLimitExceededException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .internalServerException(let message):
            return "InternalServerException: \(message ?? "")"
        case .requestThrottledException(let message):
            return "RequestThrottledException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceQuotaExceededException(let message):
            return "ServiceQuotaExceededException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
