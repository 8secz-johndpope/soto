// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Elasticbeanstalk
public enum ElasticbeanstalkError: AWSErrorType {
    case tooManyEnvironmentsException(message: String?)
    case insufficientPrivilegesException(message: String?)
    case tooManyBucketsException(message: String?)
    case s3SubscriptionRequiredException(message: String?)
    case elasticBeanstalkServiceException(message: String?)
    case tooManyApplicationsException(message: String?)
    case tooManyApplicationVersionsException(message: String?)
    case s3LocationNotInServiceRegionException(message: String?)
    case codeBuildNotInServiceRegionException(message: String?)
    case invalidRequestException(message: String?)
    case operationInProgressException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceTypeNotSupportedException(message: String?)
    case tooManyTagsException(message: String?)
    case managedActionInvalidStateException(message: String?)
    case tooManyConfigurationTemplatesException(message: String?)
    case tooManyPlatformsException(message: String?)
    case platformVersionStillReferencedException(message: String?)
    case sourceBundleDeletionException(message: String?)
}

extension ElasticbeanstalkError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "TooManyEnvironmentsException":
            self = .tooManyEnvironmentsException(message: message)
        case "InsufficientPrivilegesException":
            self = .insufficientPrivilegesException(message: message)
        case "TooManyBucketsException":
            self = .tooManyBucketsException(message: message)
        case "S3SubscriptionRequiredException":
            self = .s3SubscriptionRequiredException(message: message)
        case "ElasticBeanstalkServiceException":
            self = .elasticBeanstalkServiceException(message: message)
        case "TooManyApplicationsException":
            self = .tooManyApplicationsException(message: message)
        case "TooManyApplicationVersionsException":
            self = .tooManyApplicationVersionsException(message: message)
        case "S3LocationNotInServiceRegionException":
            self = .s3LocationNotInServiceRegionException(message: message)
        case "CodeBuildNotInServiceRegionException":
            self = .codeBuildNotInServiceRegionException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "OperationInProgressException":
            self = .operationInProgressException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceTypeNotSupportedException":
            self = .resourceTypeNotSupportedException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "ManagedActionInvalidStateException":
            self = .managedActionInvalidStateException(message: message)
        case "TooManyConfigurationTemplatesException":
            self = .tooManyConfigurationTemplatesException(message: message)
        case "TooManyPlatformsException":
            self = .tooManyPlatformsException(message: message)
        case "PlatformVersionStillReferencedException":
            self = .platformVersionStillReferencedException(message: message)
        case "SourceBundleDeletionException":
            self = .sourceBundleDeletionException(message: message)
        default:
            return nil
        }
    }
}