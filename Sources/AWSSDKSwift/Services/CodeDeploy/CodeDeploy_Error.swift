// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CodeDeploy
public enum CodeDeployErrorType: AWSErrorType {
    case alarmsLimitExceededException(message: String?)
    case applicationAlreadyExistsException(message: String?)
    case applicationDoesNotExistException(message: String?)
    case applicationLimitExceededException(message: String?)
    case applicationNameRequiredException(message: String?)
    case batchLimitExceededException(message: String?)
    case bucketNameFilterRequiredException(message: String?)
    case deploymentAlreadyCompletedException(message: String?)
    case deploymentConfigAlreadyExistsException(message: String?)
    case deploymentConfigDoesNotExistException(message: String?)
    case deploymentConfigInUseException(message: String?)
    case deploymentConfigLimitExceededException(message: String?)
    case deploymentConfigNameRequiredException(message: String?)
    case deploymentDoesNotExistException(message: String?)
    case deploymentGroupAlreadyExistsException(message: String?)
    case deploymentGroupDoesNotExistException(message: String?)
    case deploymentGroupLimitExceededException(message: String?)
    case deploymentGroupNameRequiredException(message: String?)
    case deploymentIdRequiredException(message: String?)
    case deploymentIsNotInReadyStateException(message: String?)
    case deploymentLimitExceededException(message: String?)
    case deploymentNotStartedException(message: String?)
    case deploymentTargetDoesNotExistException(message: String?)
    case deploymentTargetIdRequiredException(message: String?)
    case deploymentTargetListSizeExceededException(message: String?)
    case descriptionTooLongException(message: String?)
    case eCSServiceMappingLimitExceededException(message: String?)
    case gitHubAccountTokenDoesNotExistException(message: String?)
    case gitHubAccountTokenNameRequiredException(message: String?)
    case iamArnRequiredException(message: String?)
    case iamSessionArnAlreadyRegisteredException(message: String?)
    case iamUserArnAlreadyRegisteredException(message: String?)
    case iamUserArnRequiredException(message: String?)
    case instanceDoesNotExistException(message: String?)
    case instanceIdRequiredException(message: String?)
    case instanceLimitExceededException(message: String?)
    case instanceNameAlreadyRegisteredException(message: String?)
    case instanceNameRequiredException(message: String?)
    case instanceNotRegisteredException(message: String?)
    case invalidAlarmConfigException(message: String?)
    case invalidApplicationNameException(message: String?)
    case invalidAutoRollbackConfigException(message: String?)
    case invalidAutoScalingGroupException(message: String?)
    case invalidBlueGreenDeploymentConfigurationException(message: String?)
    case invalidBucketNameFilterException(message: String?)
    case invalidComputePlatformException(message: String?)
    case invalidDeployedStateFilterException(message: String?)
    case invalidDeploymentConfigNameException(message: String?)
    case invalidDeploymentGroupNameException(message: String?)
    case invalidDeploymentIdException(message: String?)
    case invalidDeploymentInstanceTypeException(message: String?)
    case invalidDeploymentStatusException(message: String?)
    case invalidDeploymentStyleException(message: String?)
    case invalidDeploymentTargetIdException(message: String?)
    case invalidDeploymentWaitTypeException(message: String?)
    case invalidEC2TagCombinationException(message: String?)
    case invalidEC2TagException(message: String?)
    case invalidECSServiceException(message: String?)
    case invalidFileExistsBehaviorException(message: String?)
    case invalidGitHubAccountTokenException(message: String?)
    case invalidGitHubAccountTokenNameException(message: String?)
    case invalidIamSessionArnException(message: String?)
    case invalidIamUserArnException(message: String?)
    case invalidIgnoreApplicationStopFailuresValueException(message: String?)
    case invalidInputException(message: String?)
    case invalidInstanceNameException(message: String?)
    case invalidInstanceStatusException(message: String?)
    case invalidInstanceTypeException(message: String?)
    case invalidKeyPrefixFilterException(message: String?)
    case invalidLifecycleEventHookExecutionIdException(message: String?)
    case invalidLifecycleEventHookExecutionStatusException(message: String?)
    case invalidLoadBalancerInfoException(message: String?)
    case invalidMinimumHealthyHostValueException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidOnPremisesTagCombinationException(message: String?)
    case invalidOperationException(message: String?)
    case invalidRegistrationStatusException(message: String?)
    case invalidRevisionException(message: String?)
    case invalidRoleException(message: String?)
    case invalidSortByException(message: String?)
    case invalidSortOrderException(message: String?)
    case invalidTagException(message: String?)
    case invalidTagFilterException(message: String?)
    case invalidTargetFilterNameException(message: String?)
    case invalidTargetGroupPairException(message: String?)
    case invalidTargetInstancesException(message: String?)
    case invalidTimeRangeException(message: String?)
    case invalidTrafficRoutingConfigurationException(message: String?)
    case invalidTriggerConfigException(message: String?)
    case invalidUpdateOutdatedInstancesOnlyValueException(message: String?)
    case lifecycleEventAlreadyCompletedException(message: String?)
    case lifecycleHookLimitExceededException(message: String?)
    case multipleIamArnsProvidedException(message: String?)
    case operationNotSupportedException(message: String?)
    case resourceValidationException(message: String?)
    case revisionDoesNotExistException(message: String?)
    case revisionRequiredException(message: String?)
    case roleRequiredException(message: String?)
    case tagLimitExceededException(message: String?)
    case tagRequiredException(message: String?)
    case tagSetListLimitExceededException(message: String?)
    case throttlingException(message: String?)
    case triggerTargetsLimitExceededException(message: String?)
    case unsupportedActionForDeploymentTypeException(message: String?)
}

extension CodeDeployErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlarmsLimitExceededException":
            self = .alarmsLimitExceededException(message: message)
        case "ApplicationAlreadyExistsException":
            self = .applicationAlreadyExistsException(message: message)
        case "ApplicationDoesNotExistException":
            self = .applicationDoesNotExistException(message: message)
        case "ApplicationLimitExceededException":
            self = .applicationLimitExceededException(message: message)
        case "ApplicationNameRequiredException":
            self = .applicationNameRequiredException(message: message)
        case "BatchLimitExceededException":
            self = .batchLimitExceededException(message: message)
        case "BucketNameFilterRequiredException":
            self = .bucketNameFilterRequiredException(message: message)
        case "DeploymentAlreadyCompletedException":
            self = .deploymentAlreadyCompletedException(message: message)
        case "DeploymentConfigAlreadyExistsException":
            self = .deploymentConfigAlreadyExistsException(message: message)
        case "DeploymentConfigDoesNotExistException":
            self = .deploymentConfigDoesNotExistException(message: message)
        case "DeploymentConfigInUseException":
            self = .deploymentConfigInUseException(message: message)
        case "DeploymentConfigLimitExceededException":
            self = .deploymentConfigLimitExceededException(message: message)
        case "DeploymentConfigNameRequiredException":
            self = .deploymentConfigNameRequiredException(message: message)
        case "DeploymentDoesNotExistException":
            self = .deploymentDoesNotExistException(message: message)
        case "DeploymentGroupAlreadyExistsException":
            self = .deploymentGroupAlreadyExistsException(message: message)
        case "DeploymentGroupDoesNotExistException":
            self = .deploymentGroupDoesNotExistException(message: message)
        case "DeploymentGroupLimitExceededException":
            self = .deploymentGroupLimitExceededException(message: message)
        case "DeploymentGroupNameRequiredException":
            self = .deploymentGroupNameRequiredException(message: message)
        case "DeploymentIdRequiredException":
            self = .deploymentIdRequiredException(message: message)
        case "DeploymentIsNotInReadyStateException":
            self = .deploymentIsNotInReadyStateException(message: message)
        case "DeploymentLimitExceededException":
            self = .deploymentLimitExceededException(message: message)
        case "DeploymentNotStartedException":
            self = .deploymentNotStartedException(message: message)
        case "DeploymentTargetDoesNotExistException":
            self = .deploymentTargetDoesNotExistException(message: message)
        case "DeploymentTargetIdRequiredException":
            self = .deploymentTargetIdRequiredException(message: message)
        case "DeploymentTargetListSizeExceededException":
            self = .deploymentTargetListSizeExceededException(message: message)
        case "DescriptionTooLongException":
            self = .descriptionTooLongException(message: message)
        case "ECSServiceMappingLimitExceededException":
            self = .eCSServiceMappingLimitExceededException(message: message)
        case "GitHubAccountTokenDoesNotExistException":
            self = .gitHubAccountTokenDoesNotExistException(message: message)
        case "GitHubAccountTokenNameRequiredException":
            self = .gitHubAccountTokenNameRequiredException(message: message)
        case "IamArnRequiredException":
            self = .iamArnRequiredException(message: message)
        case "IamSessionArnAlreadyRegisteredException":
            self = .iamSessionArnAlreadyRegisteredException(message: message)
        case "IamUserArnAlreadyRegisteredException":
            self = .iamUserArnAlreadyRegisteredException(message: message)
        case "IamUserArnRequiredException":
            self = .iamUserArnRequiredException(message: message)
        case "InstanceDoesNotExistException":
            self = .instanceDoesNotExistException(message: message)
        case "InstanceIdRequiredException":
            self = .instanceIdRequiredException(message: message)
        case "InstanceLimitExceededException":
            self = .instanceLimitExceededException(message: message)
        case "InstanceNameAlreadyRegisteredException":
            self = .instanceNameAlreadyRegisteredException(message: message)
        case "InstanceNameRequiredException":
            self = .instanceNameRequiredException(message: message)
        case "InstanceNotRegisteredException":
            self = .instanceNotRegisteredException(message: message)
        case "InvalidAlarmConfigException":
            self = .invalidAlarmConfigException(message: message)
        case "InvalidApplicationNameException":
            self = .invalidApplicationNameException(message: message)
        case "InvalidAutoRollbackConfigException":
            self = .invalidAutoRollbackConfigException(message: message)
        case "InvalidAutoScalingGroupException":
            self = .invalidAutoScalingGroupException(message: message)
        case "InvalidBlueGreenDeploymentConfigurationException":
            self = .invalidBlueGreenDeploymentConfigurationException(message: message)
        case "InvalidBucketNameFilterException":
            self = .invalidBucketNameFilterException(message: message)
        case "InvalidComputePlatformException":
            self = .invalidComputePlatformException(message: message)
        case "InvalidDeployedStateFilterException":
            self = .invalidDeployedStateFilterException(message: message)
        case "InvalidDeploymentConfigNameException":
            self = .invalidDeploymentConfigNameException(message: message)
        case "InvalidDeploymentGroupNameException":
            self = .invalidDeploymentGroupNameException(message: message)
        case "InvalidDeploymentIdException":
            self = .invalidDeploymentIdException(message: message)
        case "InvalidDeploymentInstanceTypeException":
            self = .invalidDeploymentInstanceTypeException(message: message)
        case "InvalidDeploymentStatusException":
            self = .invalidDeploymentStatusException(message: message)
        case "InvalidDeploymentStyleException":
            self = .invalidDeploymentStyleException(message: message)
        case "InvalidDeploymentTargetIdException":
            self = .invalidDeploymentTargetIdException(message: message)
        case "InvalidDeploymentWaitTypeException":
            self = .invalidDeploymentWaitTypeException(message: message)
        case "InvalidEC2TagCombinationException":
            self = .invalidEC2TagCombinationException(message: message)
        case "InvalidEC2TagException":
            self = .invalidEC2TagException(message: message)
        case "InvalidECSServiceException":
            self = .invalidECSServiceException(message: message)
        case "InvalidFileExistsBehaviorException":
            self = .invalidFileExistsBehaviorException(message: message)
        case "InvalidGitHubAccountTokenException":
            self = .invalidGitHubAccountTokenException(message: message)
        case "InvalidGitHubAccountTokenNameException":
            self = .invalidGitHubAccountTokenNameException(message: message)
        case "InvalidIamSessionArnException":
            self = .invalidIamSessionArnException(message: message)
        case "InvalidIamUserArnException":
            self = .invalidIamUserArnException(message: message)
        case "InvalidIgnoreApplicationStopFailuresValueException":
            self = .invalidIgnoreApplicationStopFailuresValueException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "InvalidInstanceNameException":
            self = .invalidInstanceNameException(message: message)
        case "InvalidInstanceStatusException":
            self = .invalidInstanceStatusException(message: message)
        case "InvalidInstanceTypeException":
            self = .invalidInstanceTypeException(message: message)
        case "InvalidKeyPrefixFilterException":
            self = .invalidKeyPrefixFilterException(message: message)
        case "InvalidLifecycleEventHookExecutionIdException":
            self = .invalidLifecycleEventHookExecutionIdException(message: message)
        case "InvalidLifecycleEventHookExecutionStatusException":
            self = .invalidLifecycleEventHookExecutionStatusException(message: message)
        case "InvalidLoadBalancerInfoException":
            self = .invalidLoadBalancerInfoException(message: message)
        case "InvalidMinimumHealthyHostValueException":
            self = .invalidMinimumHealthyHostValueException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidOnPremisesTagCombinationException":
            self = .invalidOnPremisesTagCombinationException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "InvalidRegistrationStatusException":
            self = .invalidRegistrationStatusException(message: message)
        case "InvalidRevisionException":
            self = .invalidRevisionException(message: message)
        case "InvalidRoleException":
            self = .invalidRoleException(message: message)
        case "InvalidSortByException":
            self = .invalidSortByException(message: message)
        case "InvalidSortOrderException":
            self = .invalidSortOrderException(message: message)
        case "InvalidTagException":
            self = .invalidTagException(message: message)
        case "InvalidTagFilterException":
            self = .invalidTagFilterException(message: message)
        case "InvalidTargetFilterNameException":
            self = .invalidTargetFilterNameException(message: message)
        case "InvalidTargetGroupPairException":
            self = .invalidTargetGroupPairException(message: message)
        case "InvalidTargetInstancesException":
            self = .invalidTargetInstancesException(message: message)
        case "InvalidTimeRangeException":
            self = .invalidTimeRangeException(message: message)
        case "InvalidTrafficRoutingConfigurationException":
            self = .invalidTrafficRoutingConfigurationException(message: message)
        case "InvalidTriggerConfigException":
            self = .invalidTriggerConfigException(message: message)
        case "InvalidUpdateOutdatedInstancesOnlyValueException":
            self = .invalidUpdateOutdatedInstancesOnlyValueException(message: message)
        case "LifecycleEventAlreadyCompletedException":
            self = .lifecycleEventAlreadyCompletedException(message: message)
        case "LifecycleHookLimitExceededException":
            self = .lifecycleHookLimitExceededException(message: message)
        case "MultipleIamArnsProvidedException":
            self = .multipleIamArnsProvidedException(message: message)
        case "OperationNotSupportedException":
            self = .operationNotSupportedException(message: message)
        case "ResourceValidationException":
            self = .resourceValidationException(message: message)
        case "RevisionDoesNotExistException":
            self = .revisionDoesNotExistException(message: message)
        case "RevisionRequiredException":
            self = .revisionRequiredException(message: message)
        case "RoleRequiredException":
            self = .roleRequiredException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        case "TagRequiredException":
            self = .tagRequiredException(message: message)
        case "TagSetListLimitExceededException":
            self = .tagSetListLimitExceededException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "TriggerTargetsLimitExceededException":
            self = .triggerTargetsLimitExceededException(message: message)
        case "UnsupportedActionForDeploymentTypeException":
            self = .unsupportedActionForDeploymentTypeException(message: message)
        default:
            return nil
        }
    }
}