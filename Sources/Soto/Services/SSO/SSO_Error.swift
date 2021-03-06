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

/// Error enum for SSO
public enum SSOErrorType: AWSErrorType {
    case invalidRequestException(message: String?)
    case resourceNotFoundException(message: String?)
    case tooManyRequestsException(message: String?)
    case unauthorizedException(message: String?)
}

extension SSOErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        default:
            return nil
        }
    }
}

extension SSOErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        case .unauthorizedException(let message):
            return "UnauthorizedException: \(message ?? "")"
        }
    }
}
