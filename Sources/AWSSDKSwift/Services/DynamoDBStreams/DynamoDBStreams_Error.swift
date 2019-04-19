// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for DynamoDBStreams
public enum DynamoDBStreamsErrorType: AWSErrorType {
    case expiredIteratorException(message: String?)
    case internalServerError(message: String?)
    case limitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case trimmedDataAccessException(message: String?)
}

extension DynamoDBStreamsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ExpiredIteratorException":
            self = .expiredIteratorException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TrimmedDataAccessException":
            self = .trimmedDataAccessException(message: message)
        default:
            return nil
        }
    }
}