// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally.
*/
public struct Greengrass {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "greengrass",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-06-07",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [GreengrassError.self]
        )
    }

    ///  Disassociates the service role from the account. Without a service role, deployments will not work.
    public func disassociateServiceRoleFromAccount(_ input: DisassociateServiceRoleFromAccountRequest) throws -> DisassociateServiceRoleFromAccountResponse {
        return try client.send(operation: "DisassociateServiceRoleFromAccount", path: "/greengrass/servicerole", httpMethod: "DELETE", input: input)
    }

    ///  Creates a version of a core definition that has already been defined. AWS Greengrass Groups must each contain exactly 1 AWS Greengrass Core.
    public func createCoreDefinitionVersion(_ input: CreateCoreDefinitionVersionRequest) throws -> CreateCoreDefinitionVersionResponse {
        return try client.send(operation: "CreateCoreDefinitionVersion", path: "/greengrass/definition/cores/{CoreDefinitionId}/versions", httpMethod: "POST", input: input)
    }

    ///  Create a version of a resource definition that has already been defined.
    public func createResourceDefinitionVersion(_ input: CreateResourceDefinitionVersionRequest) throws -> CreateResourceDefinitionVersionResponse {
        return try client.send(operation: "CreateResourceDefinitionVersion", path: "/greengrass/definition/resources/{ResourceDefinitionId}/versions", httpMethod: "POST", input: input)
    }

    ///  Associates a role which is used by AWS Greengrass. AWS Greengrass uses the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. It needs to have minimum permissions in policy ``AWSGreengrassResourceAccessRolePolicy``
    public func associateServiceRoleToAccount(_ input: AssociateServiceRoleToAccountRequest) throws -> AssociateServiceRoleToAccountResponse {
        return try client.send(operation: "AssociateServiceRoleToAccount", path: "/greengrass/servicerole", httpMethod: "PUT", input: input)
    }

    ///  Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ``CreateResourceDefinitionVersion`` later.
    public func createResourceDefinition(_ input: CreateResourceDefinitionRequest) throws -> CreateResourceDefinitionResponse {
        return try client.send(operation: "CreateResourceDefinition", path: "/greengrass/definition/resources", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of subscription definitions.
    public func listSubscriptionDefinitions(_ input: ListSubscriptionDefinitionsRequest) throws -> ListSubscriptionDefinitionsResponse {
        return try client.send(operation: "ListSubscriptionDefinitions", path: "/greengrass/definition/subscriptions", httpMethod: "GET", input: input)
    }

    ///  Creates a version of a device definition that has already been defined.
    public func createDeviceDefinitionVersion(_ input: CreateDeviceDefinitionVersionRequest) throws -> CreateDeviceDefinitionVersionResponse {
        return try client.send(operation: "CreateDeviceDefinitionVersion", path: "/greengrass/definition/devices/{DeviceDefinitionId}/versions", httpMethod: "POST", input: input)
    }

    ///  Disassociates the role from a group.
    public func disassociateRoleFromGroup(_ input: DisassociateRoleFromGroupRequest) throws -> DisassociateRoleFromGroupResponse {
        return try client.send(operation: "DisassociateRoleFromGroup", path: "/greengrass/groups/{GroupId}/role", httpMethod: "DELETE", input: input)
    }

    ///  Updates a resource definition.
    public func updateResourceDefinition(_ input: UpdateResourceDefinitionRequest) throws -> UpdateResourceDefinitionResponse {
        return try client.send(operation: "UpdateResourceDefinition", path: "/greengrass/definition/resources/{ResourceDefinitionId}", httpMethod: "PUT", input: input)
    }

    ///  Updates the Cert expiry time for a group.
    public func updateGroupCertificateConfiguration(_ input: UpdateGroupCertificateConfigurationRequest) throws -> UpdateGroupCertificateConfigurationResponse {
        return try client.send(operation: "UpdateGroupCertificateConfiguration", path: "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", httpMethod: "PUT", input: input)
    }

    ///  Deletes a device definition. The device definition must not have been used in a deployment.
    public func deleteDeviceDefinition(_ input: DeleteDeviceDefinitionRequest) throws -> DeleteDeviceDefinitionResponse {
        return try client.send(operation: "DeleteDeviceDefinition", path: "/greengrass/definition/devices/{DeviceDefinitionId}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves a list of device definitions.
    public func listDeviceDefinitions(_ input: ListDeviceDefinitionsRequest) throws -> ListDeviceDefinitionsResponse {
        return try client.send(operation: "ListDeviceDefinitions", path: "/greengrass/definition/devices", httpMethod: "GET", input: input)
    }

    ///  Retrieves the service role that is attached to the account.
    public func getServiceRoleForAccount(_ input: GetServiceRoleForAccountRequest) throws -> GetServiceRoleForAccountResponse {
        return try client.send(operation: "GetServiceRoleForAccount", path: "/greengrass/servicerole", httpMethod: "GET", input: input)
    }

    ///  Deletes a Lambda function definition. The Lambda function definition must not have been used in a deployment.
    public func deleteFunctionDefinition(_ input: DeleteFunctionDefinitionRequest) throws -> DeleteFunctionDefinitionResponse {
        return try client.send(operation: "DeleteFunctionDefinition", path: "/greengrass/definition/functions/{FunctionDefinitionId}", httpMethod: "DELETE", input: input)
    }

    ///  Creates an Iot Job that will trigger your Greengrass Cores to update the software they are running.
    public func createSoftwareUpdateJob(_ input: CreateSoftwareUpdateJobRequest) throws -> CreateSoftwareUpdateJobResponse {
        return try client.send(operation: "CreateSoftwareUpdateJob", path: "/greengrass/updates", httpMethod: "POST", input: input)
    }

    ///  Creates a CA for the group. If a CA already exists, it will rotate the existing CA.
    public func createGroupCertificateAuthority(_ input: CreateGroupCertificateAuthorityRequest) throws -> CreateGroupCertificateAuthorityResponse {
        return try client.send(operation: "CreateGroupCertificateAuthority", path: "/greengrass/groups/{GroupId}/certificateauthorities", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a resource definition version, such as which resources are included in the version.
    public func getResourceDefinitionVersion(_ input: GetResourceDefinitionVersionRequest) throws -> GetResourceDefinitionVersionResponse {
        return try client.send(operation: "GetResourceDefinitionVersion", path: "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}", httpMethod: "GET", input: input)
    }

    ///  Retreives the CA associated with a group. Returns the public key of the CA.
    public func getGroupCertificateAuthority(_ input: GetGroupCertificateAuthorityRequest) throws -> GetGroupCertificateAuthorityResponse {
        return try client.send(operation: "GetGroupCertificateAuthority", path: "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", httpMethod: "GET", input: input)
    }

    ///  Creates a version of a logger definition that has already been defined.
    public func createLoggerDefinitionVersion(_ input: CreateLoggerDefinitionVersionRequest) throws -> CreateLoggerDefinitionVersionResponse {
        return try client.send(operation: "CreateLoggerDefinitionVersion", path: "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a Lambda function definition version, such as which Lambda functions are included in the version and their configurations.
    public func getFunctionDefinitionVersion(_ input: GetFunctionDefinitionVersionRequest) throws -> GetFunctionDefinitionVersionResponse {
        return try client.send(operation: "GetFunctionDefinitionVersion", path: "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a group version.
    public func getGroupVersion(_ input: GetGroupVersionRequest) throws -> GetGroupVersionResponse {
        return try client.send(operation: "GetGroupVersion", path: "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves a list of logger definitions.
    public func listLoggerDefinitions(_ input: ListLoggerDefinitionsRequest) throws -> ListLoggerDefinitionsResponse {
        return try client.send(operation: "ListLoggerDefinitions", path: "/greengrass/definition/loggers", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a resource definition, such as its creation time and latest version.
    public func getResourceDefinition(_ input: GetResourceDefinitionRequest) throws -> GetResourceDefinitionResponse {
        return try client.send(operation: "GetResourceDefinition", path: "/greengrass/definition/resources/{ResourceDefinitionId}", httpMethod: "GET", input: input)
    }

    ///  Updates a group.
    public func updateGroup(_ input: UpdateGroupRequest) throws -> UpdateGroupResponse {
        return try client.send(operation: "UpdateGroup", path: "/greengrass/groups/{GroupId}", httpMethod: "PUT", input: input)
    }

    ///  Creates a version of a group which has already been defined.
    public func createGroupVersion(_ input: CreateGroupVersionRequest) throws -> CreateGroupVersionResponse {
        return try client.send(operation: "CreateGroupVersion", path: "/greengrass/groups/{GroupId}/versions", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a core definition version.
    public func getCoreDefinition(_ input: GetCoreDefinitionRequest) throws -> GetCoreDefinitionResponse {
        return try client.send(operation: "GetCoreDefinition", path: "/greengrass/definition/cores/{CoreDefinitionId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a Lambda function definition, such as its creation time and latest version.
    public func getFunctionDefinition(_ input: GetFunctionDefinitionRequest) throws -> GetFunctionDefinitionResponse {
        return try client.send(operation: "GetFunctionDefinition", path: "/greengrass/definition/functions/{FunctionDefinitionId}", httpMethod: "GET", input: input)
    }

    ///  Create a version of a Lambda function definition that has already been defined.
    public func createFunctionDefinitionVersion(_ input: CreateFunctionDefinitionVersionRequest) throws -> CreateFunctionDefinitionVersionResponse {
        return try client.send(operation: "CreateFunctionDefinitionVersion", path: "/greengrass/definition/functions/{FunctionDefinitionId}/versions", httpMethod: "POST", input: input)
    }

    ///  Updates a device definition.
    public func updateDeviceDefinition(_ input: UpdateDeviceDefinitionRequest) throws -> UpdateDeviceDefinitionResponse {
        return try client.send(operation: "UpdateDeviceDefinition", path: "/greengrass/definition/devices/{DeviceDefinitionId}", httpMethod: "PUT", input: input)
    }

    ///  Creates a device definition. You may optinally provide the initial version of the device definition or use ``CreateDeviceDefinitionVersion`` at a later time.
    public func createDeviceDefinition(_ input: CreateDeviceDefinitionRequest) throws -> CreateDeviceDefinitionResponse {
        return try client.send(operation: "CreateDeviceDefinition", path: "/greengrass/definition/devices", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a subscription definition.
    public func getSubscriptionDefinition(_ input: GetSubscriptionDefinitionRequest) throws -> GetSubscriptionDefinitionResponse {
        return try client.send(operation: "GetSubscriptionDefinition", path: "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a group.
    public func getGroup(_ input: GetGroupRequest) throws -> GetGroupResponse {
        return try client.send(operation: "GetGroup", path: "/greengrass/groups/{GroupId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves a list of resource definitions.
    public func listResourceDefinitions(_ input: ListResourceDefinitionsRequest) throws -> ListResourceDefinitionsResponse {
        return try client.send(operation: "ListResourceDefinitions", path: "/greengrass/definition/resources", httpMethod: "GET", input: input)
    }

    ///  Retrieves a list of Lambda function definitions.
    public func listFunctionDefinitions(_ input: ListFunctionDefinitionsRequest) throws -> ListFunctionDefinitionsResponse {
        return try client.send(operation: "ListFunctionDefinitions", path: "/greengrass/definition/functions", httpMethod: "GET", input: input)
    }

    ///  Retrieves the current configuration for the CA used by the group.
    public func getGroupCertificateConfiguration(_ input: GetGroupCertificateConfigurationRequest) throws -> GetGroupCertificateConfigurationResponse {
        return try client.send(operation: "GetGroupCertificateConfiguration", path: "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a logger definition.
    public func getLoggerDefinition(_ input: GetLoggerDefinitionRequest) throws -> GetLoggerDefinitionResponse {
        return try client.send(operation: "GetLoggerDefinition", path: "/greengrass/definition/loggers/{LoggerDefinitionId}", httpMethod: "GET", input: input)
    }

    ///  Creates a group. You may optionally provide the initial version of the group or use ''CreateGroupVersion'' at a later time.
    public func createGroup(_ input: CreateGroupRequest) throws -> CreateGroupResponse {
        return try client.send(operation: "CreateGroup", path: "/greengrass/groups", httpMethod: "POST", input: input)
    }

    ///  Creates a deployment.
    public func createDeployment(_ input: CreateDeploymentRequest) throws -> CreateDeploymentResponse {
        return try client.send(operation: "CreateDeployment", path: "/greengrass/groups/{GroupId}/deployments", httpMethod: "POST", input: input)
    }

    ///  Retrieves the connectivity information for a core.
    public func getConnectivityInfo(_ input: GetConnectivityInfoRequest) throws -> GetConnectivityInfoResponse {
        return try client.send(operation: "GetConnectivityInfo", path: "/greengrass/things/{ThingName}/connectivityInfo", httpMethod: "GET", input: input)
    }

    ///  Deletes a logger definition. The logger definition must not have been used in a deployment.
    public func deleteLoggerDefinition(_ input: DeleteLoggerDefinitionRequest) throws -> DeleteLoggerDefinitionResponse {
        return try client.send(operation: "DeleteLoggerDefinition", path: "/greengrass/definition/loggers/{LoggerDefinitionId}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves information about a device definition version.
    public func getDeviceDefinitionVersion(_ input: GetDeviceDefinitionVersionRequest) throws -> GetDeviceDefinitionVersionResponse {
        return try client.send(operation: "GetDeviceDefinitionVersion", path: "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", httpMethod: "GET", input: input)
    }

    ///  Lists the versions of a device definition.
    public func listDeviceDefinitionVersions(_ input: ListDeviceDefinitionVersionsRequest) throws -> ListDeviceDefinitionVersionsResponse {
        return try client.send(operation: "ListDeviceDefinitionVersions", path: "/greengrass/definition/devices/{DeviceDefinitionId}/versions", httpMethod: "GET", input: input)
    }

    ///  Deletes a subscription definition. The subscription definition must not have been used in a deployment.
    public func deleteSubscriptionDefinition(_ input: DeleteSubscriptionDefinitionRequest) throws -> DeleteSubscriptionDefinitionResponse {
        return try client.send(operation: "DeleteSubscriptionDefinition", path: "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", httpMethod: "DELETE", input: input)
    }

    ///  Creates a version of a subscription definition which has already been defined.
    public func createSubscriptionDefinitionVersion(_ input: CreateSubscriptionDefinitionVersionRequest) throws -> CreateSubscriptionDefinitionVersionResponse {
        return try client.send(operation: "CreateSubscriptionDefinitionVersion", path: "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", httpMethod: "POST", input: input)
    }

    ///  Updates a subscription definition.
    public func updateSubscriptionDefinition(_ input: UpdateSubscriptionDefinitionRequest) throws -> UpdateSubscriptionDefinitionResponse {
        return try client.send(operation: "UpdateSubscriptionDefinition", path: "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", httpMethod: "PUT", input: input)
    }

    ///  Deletes a core definition. The core definition must not have been used in a deployment.
    public func deleteCoreDefinition(_ input: DeleteCoreDefinitionRequest) throws -> DeleteCoreDefinitionResponse {
        return try client.send(operation: "DeleteCoreDefinition", path: "/greengrass/definition/cores/{CoreDefinitionId}", httpMethod: "DELETE", input: input)
    }

    ///  Creates a logger definition. You may optionally provide the initial version of the logger definition or use ``CreateLoggerDefinitionVersion`` at a later time.
    public func createLoggerDefinition(_ input: CreateLoggerDefinitionRequest) throws -> CreateLoggerDefinitionResponse {
        return try client.send(operation: "CreateLoggerDefinition", path: "/greengrass/definition/loggers", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a device definition.
    public func getDeviceDefinition(_ input: GetDeviceDefinitionRequest) throws -> GetDeviceDefinitionResponse {
        return try client.send(operation: "GetDeviceDefinition", path: "/greengrass/definition/devices/{DeviceDefinitionId}", httpMethod: "GET", input: input)
    }

    ///  Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ``CreateFunctionDefinitionVersion`` later.
    public func createFunctionDefinition(_ input: CreateFunctionDefinitionRequest) throws -> CreateFunctionDefinitionResponse {
        return try client.send(operation: "CreateFunctionDefinition", path: "/greengrass/definition/functions", httpMethod: "POST", input: input)
    }

    ///  List the versions of a group.
    public func listGroupVersions(_ input: ListGroupVersionsRequest) throws -> ListGroupVersionsResponse {
        return try client.send(operation: "ListGroupVersions", path: "/greengrass/groups/{GroupId}/versions", httpMethod: "GET", input: input)
    }

    ///  Lists the versions of a Lambda function definition.
    public func listFunctionDefinitionVersions(_ input: ListFunctionDefinitionVersionsRequest) throws -> ListFunctionDefinitionVersionsResponse {
        return try client.send(operation: "ListFunctionDefinitionVersions", path: "/greengrass/definition/functions/{FunctionDefinitionId}/versions", httpMethod: "GET", input: input)
    }

    ///  Lists the versions of a resource definition.
    public func listResourceDefinitionVersions(_ input: ListResourceDefinitionVersionsRequest) throws -> ListResourceDefinitionVersionsResponse {
        return try client.send(operation: "ListResourceDefinitionVersions", path: "/greengrass/definition/resources/{ResourceDefinitionId}/versions", httpMethod: "GET", input: input)
    }

    ///  Deletes a group. The group must not have been used in deployment.
    public func deleteGroup(_ input: DeleteGroupRequest) throws -> DeleteGroupResponse {
        return try client.send(operation: "DeleteGroup", path: "/greengrass/groups/{GroupId}", httpMethod: "DELETE", input: input)
    }

    ///  Returns a history of deployments for the group.
    public func listDeployments(_ input: ListDeploymentsRequest) throws -> ListDeploymentsResponse {
        return try client.send(operation: "ListDeployments", path: "/greengrass/groups/{GroupId}/deployments", httpMethod: "GET", input: input)
    }

    ///  Retrieves the current CAs for a group.
    public func listGroupCertificateAuthorities(_ input: ListGroupCertificateAuthoritiesRequest) throws -> ListGroupCertificateAuthoritiesResponse {
        return try client.send(operation: "ListGroupCertificateAuthorities", path: "/greengrass/groups/{GroupId}/certificateauthorities", httpMethod: "GET", input: input)
    }

    ///  Retrieves the role associated with a particular group.
    public func getAssociatedRole(_ input: GetAssociatedRoleRequest) throws -> GetAssociatedRoleResponse {
        return try client.send(operation: "GetAssociatedRole", path: "/greengrass/groups/{GroupId}/role", httpMethod: "GET", input: input)
    }

    ///  Retrieves a list of core definitions.
    public func listCoreDefinitions(_ input: ListCoreDefinitionsRequest) throws -> ListCoreDefinitionsResponse {
        return try client.send(operation: "ListCoreDefinitions", path: "/greengrass/definition/cores", httpMethod: "GET", input: input)
    }

    ///  Creates a subscription definition. You may optionally provide the initial version of the subscription definition or use ``CreateSubscriptionDefinitionVersion`` at a later time.
    public func createSubscriptionDefinition(_ input: CreateSubscriptionDefinitionRequest) throws -> CreateSubscriptionDefinitionResponse {
        return try client.send(operation: "CreateSubscriptionDefinition", path: "/greengrass/definition/subscriptions", httpMethod: "POST", input: input)
    }

    ///  Resets a group's deployments.
    public func resetDeployments(_ input: ResetDeploymentsRequest) throws -> ResetDeploymentsResponse {
        return try client.send(operation: "ResetDeployments", path: "/greengrass/groups/{GroupId}/deployments/$reset", httpMethod: "POST", input: input)
    }

    ///  Retrieves information about a logger definition version.
    public func getLoggerDefinitionVersion(_ input: GetLoggerDefinitionVersionRequest) throws -> GetLoggerDefinitionVersionResponse {
        return try client.send(operation: "GetLoggerDefinitionVersion", path: "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", httpMethod: "GET", input: input)
    }

    ///  Associates a role with a group. The role will be used by the AWS Greengrass core in order to access AWS cloud services. The role's permissions will allow Greengrass core Lambda functions to perform actions against the cloud.
    public func associateRoleToGroup(_ input: AssociateRoleToGroupRequest) throws -> AssociateRoleToGroupResponse {
        return try client.send(operation: "AssociateRoleToGroup", path: "/greengrass/groups/{GroupId}/role", httpMethod: "PUT", input: input)
    }

    ///  Lists the versions of a logger definition.
    public func listLoggerDefinitionVersions(_ input: ListLoggerDefinitionVersionsRequest) throws -> ListLoggerDefinitionVersionsResponse {
        return try client.send(operation: "ListLoggerDefinitionVersions", path: "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", httpMethod: "GET", input: input)
    }

    ///  Deletes a resource definition.
    public func deleteResourceDefinition(_ input: DeleteResourceDefinitionRequest) throws -> DeleteResourceDefinitionResponse {
        return try client.send(operation: "DeleteResourceDefinition", path: "/greengrass/definition/resources/{ResourceDefinitionId}", httpMethod: "DELETE", input: input)
    }

    ///  Lists versions of a core definition.
    public func listCoreDefinitionVersions(_ input: ListCoreDefinitionVersionsRequest) throws -> ListCoreDefinitionVersionsResponse {
        return try client.send(operation: "ListCoreDefinitionVersions", path: "/greengrass/definition/cores/{CoreDefinitionId}/versions", httpMethod: "GET", input: input)
    }

    ///  Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
    public func updateConnectivityInfo(_ input: UpdateConnectivityInfoRequest) throws -> UpdateConnectivityInfoResponse {
        return try client.send(operation: "UpdateConnectivityInfo", path: "/greengrass/things/{ThingName}/connectivityInfo", httpMethod: "PUT", input: input)
    }

    ///  Lists the versions of a subscription definition.
    public func listSubscriptionDefinitionVersions(_ input: ListSubscriptionDefinitionVersionsRequest) throws -> ListSubscriptionDefinitionVersionsResponse {
        return try client.send(operation: "ListSubscriptionDefinitionVersions", path: "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", httpMethod: "GET", input: input)
    }

    ///  Updates a logger definition.
    public func updateLoggerDefinition(_ input: UpdateLoggerDefinitionRequest) throws -> UpdateLoggerDefinitionResponse {
        return try client.send(operation: "UpdateLoggerDefinition", path: "/greengrass/definition/loggers/{LoggerDefinitionId}", httpMethod: "PUT", input: input)
    }

    ///  Updates a Lambda function definition.
    public func updateFunctionDefinition(_ input: UpdateFunctionDefinitionRequest) throws -> UpdateFunctionDefinitionResponse {
        return try client.send(operation: "UpdateFunctionDefinition", path: "/greengrass/definition/functions/{FunctionDefinitionId}", httpMethod: "PUT", input: input)
    }

    ///  Creates a core definition. You may optionally provide the initial version of the core definition or use ''CreateCoreDefinitionVersion'' at a later time. AWS Greengrass Groups must each contain exactly 1 AWS Greengrass Core.
    public func createCoreDefinition(_ input: CreateCoreDefinitionRequest) throws -> CreateCoreDefinitionResponse {
        return try client.send(operation: "CreateCoreDefinition", path: "/greengrass/definition/cores", httpMethod: "POST", input: input)
    }

    ///  Updates a core definition.
    public func updateCoreDefinition(_ input: UpdateCoreDefinitionRequest) throws -> UpdateCoreDefinitionResponse {
        return try client.send(operation: "UpdateCoreDefinition", path: "/greengrass/definition/cores/{CoreDefinitionId}", httpMethod: "PUT", input: input)
    }

    ///  Retrieves information about a core definition version.
    public func getCoreDefinitionVersion(_ input: GetCoreDefinitionVersionRequest) throws -> GetCoreDefinitionVersionResponse {
        return try client.send(operation: "GetCoreDefinitionVersion", path: "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves a list of groups.
    public func listGroups(_ input: ListGroupsRequest) throws -> ListGroupsResponse {
        return try client.send(operation: "ListGroups", path: "/greengrass/groups", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a subscription definition version.
    public func getSubscriptionDefinitionVersion(_ input: GetSubscriptionDefinitionVersionRequest) throws -> GetSubscriptionDefinitionVersionResponse {
        return try client.send(operation: "GetSubscriptionDefinitionVersion", path: "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", httpMethod: "GET", input: input)
    }

    ///  Returns the status of a deployment.
    public func getDeploymentStatus(_ input: GetDeploymentStatusRequest) throws -> GetDeploymentStatusResponse {
        return try client.send(operation: "GetDeploymentStatus", path: "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", httpMethod: "GET", input: input)
    }


}