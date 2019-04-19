// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CognitoIdentityProvider
public enum CognitoIdentityProviderErrorType: AWSErrorType {
    case aliasExistsException(message: String?)
    case codeDeliveryFailureException(message: String?)
    case codeMismatchException(message: String?)
    case concurrentModificationException(message: String?)
    case duplicateProviderException(message: String?)
    case enableSoftwareTokenMFAException(message: String?)
    case expiredCodeException(message: String?)
    case groupExistsException(message: String?)
    case internalErrorException(message: String?)
    case invalidEmailRoleAccessPolicyException(message: String?)
    case invalidLambdaResponseException(message: String?)
    case invalidOAuthFlowException(message: String?)
    case invalidParameterException(message: String?)
    case invalidPasswordException(message: String?)
    case invalidSmsRoleAccessPolicyException(message: String?)
    case invalidSmsRoleTrustRelationshipException(message: String?)
    case invalidUserPoolConfigurationException(message: String?)
    case limitExceededException(message: String?)
    case mFAMethodNotFoundException(message: String?)
    case notAuthorizedException(message: String?)
    case passwordResetRequiredException(message: String?)
    case preconditionNotMetException(message: String?)
    case resourceNotFoundException(message: String?)
    case scopeDoesNotExistException(message: String?)
    case softwareTokenMFANotFoundException(message: String?)
    case tooManyFailedAttemptsException(message: String?)
    case tooManyRequestsException(message: String?)
    case unexpectedLambdaException(message: String?)
    case unsupportedIdentityProviderException(message: String?)
    case unsupportedUserStateException(message: String?)
    case userImportInProgressException(message: String?)
    case userLambdaValidationException(message: String?)
    case userNotConfirmedException(message: String?)
    case userNotFoundException(message: String?)
    case userPoolAddOnNotEnabledException(message: String?)
    case userPoolTaggingException(message: String?)
    case usernameExistsException(message: String?)
}

extension CognitoIdentityProviderErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AliasExistsException":
            self = .aliasExistsException(message: message)
        case "CodeDeliveryFailureException":
            self = .codeDeliveryFailureException(message: message)
        case "CodeMismatchException":
            self = .codeMismatchException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "DuplicateProviderException":
            self = .duplicateProviderException(message: message)
        case "EnableSoftwareTokenMFAException":
            self = .enableSoftwareTokenMFAException(message: message)
        case "ExpiredCodeException":
            self = .expiredCodeException(message: message)
        case "GroupExistsException":
            self = .groupExistsException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "InvalidEmailRoleAccessPolicyException":
            self = .invalidEmailRoleAccessPolicyException(message: message)
        case "InvalidLambdaResponseException":
            self = .invalidLambdaResponseException(message: message)
        case "InvalidOAuthFlowException":
            self = .invalidOAuthFlowException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidPasswordException":
            self = .invalidPasswordException(message: message)
        case "InvalidSmsRoleAccessPolicyException":
            self = .invalidSmsRoleAccessPolicyException(message: message)
        case "InvalidSmsRoleTrustRelationshipException":
            self = .invalidSmsRoleTrustRelationshipException(message: message)
        case "InvalidUserPoolConfigurationException":
            self = .invalidUserPoolConfigurationException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MFAMethodNotFoundException":
            self = .mFAMethodNotFoundException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "PasswordResetRequiredException":
            self = .passwordResetRequiredException(message: message)
        case "PreconditionNotMetException":
            self = .preconditionNotMetException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ScopeDoesNotExistException":
            self = .scopeDoesNotExistException(message: message)
        case "SoftwareTokenMFANotFoundException":
            self = .softwareTokenMFANotFoundException(message: message)
        case "TooManyFailedAttemptsException":
            self = .tooManyFailedAttemptsException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "UnexpectedLambdaException":
            self = .unexpectedLambdaException(message: message)
        case "UnsupportedIdentityProviderException":
            self = .unsupportedIdentityProviderException(message: message)
        case "UnsupportedUserStateException":
            self = .unsupportedUserStateException(message: message)
        case "UserImportInProgressException":
            self = .userImportInProgressException(message: message)
        case "UserLambdaValidationException":
            self = .userLambdaValidationException(message: message)
        case "UserNotConfirmedException":
            self = .userNotConfirmedException(message: message)
        case "UserNotFoundException":
            self = .userNotFoundException(message: message)
        case "UserPoolAddOnNotEnabledException":
            self = .userPoolAddOnNotEnabledException(message: message)
        case "UserPoolTaggingException":
            self = .userPoolTaggingException(message: message)
        case "UsernameExistsException":
            self = .usernameExistsException(message: message)
        default:
            return nil
        }
    }
}