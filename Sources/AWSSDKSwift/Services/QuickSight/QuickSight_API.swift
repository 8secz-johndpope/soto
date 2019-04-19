// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon QuickSight API Reference Amazon QuickSight is a fast, cloud-powered BI service that makes it easy to build visualizations, perform ad hoc analysis, and quickly get business insights from your data. This API interface reference contains documentation for a programming interface that you can use to manage Amazon QuickSight. 
*/
public struct QuickSight {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "quicksight",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 0)),
            apiVersion: "2018-04-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [QuickSightErrorType.self]
        )
    }

    ///  Creates an Amazon QuickSight group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.
    public func createGroup(_ input: CreateGroupRequest) throws -> CreateGroupResponse {
        return try client.send(operation: "CreateGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", httpMethod: "POST", input: input)
    }

    ///  Adds an Amazon QuickSight user to an Amazon QuickSight group.  The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; . The condition resource is the user name. The condition key is quicksight:UserName. The response is the group member object.
    public func createGroupMembership(_ input: CreateGroupMembershipRequest) throws -> CreateGroupMembershipResponse {
        return try client.send(operation: "CreateGroupMembership", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", httpMethod: "PUT", input: input)
    }

    ///  Removes a user group from Amazon QuickSight.  The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; .
    public func deleteGroup(_ input: DeleteGroupRequest) throws -> DeleteGroupResponse {
        return try client.send(operation: "DeleteGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "DELETE", input: input)
    }

    ///  Removes a user from a group so that the user is no longer a member of the group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; . The condition resource is the user name. The condition key is quicksight:UserName.
    public func deleteGroupMembership(_ input: DeleteGroupMembershipRequest) throws -> DeleteGroupMembershipResponse {
        return try client.send(operation: "DeleteGroupMembership", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call. The IAM user isn't deleted as a result of this call.  The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/&lt;user-name&gt;  .
    public func deleteUser(_ input: DeleteUserRequest) throws -> DeleteUserResponse {
        return try client.send(operation: "DeleteUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "DELETE", input: input)
    }

    ///  Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN).  The permissions resource is arn:aws:quicksight:us-east-1:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is the group object. 
    public func describeGroup(_ input: DescribeGroupRequest) throws -> DescribeGroupResponse {
        return try client.send(operation: "DescribeGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "GET", input: input)
    }

    ///  Returns information about a user, given the user name.  The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/&lt;user-name&gt; .  The response is a user object that contains the user's Amazon Resource Name (ARN), AWS Identity and Access Management (IAM) role, and email address. 
    public func describeUser(_ input: DescribeUserRequest) throws -> DescribeUserResponse {
        return try client.send(operation: "DescribeUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "GET", input: input)
    }

    ///  Generates an embedded URL and authorization code. Before this can work properly, you need to configure the dashboards and user permissions first. 
    public func getDashboardEmbedUrl(_ input: GetDashboardEmbedUrlRequest) throws -> GetDashboardEmbedUrlResponse {
        return try client.send(operation: "GetDashboardEmbedUrl", path: "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url", httpMethod: "GET", input: input)
    }

    ///  Lists member users in a group. The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a list of group member objects.
    public func listGroupMemberships(_ input: ListGroupMembershipsRequest) throws -> ListGroupMembershipsResponse {
        return try client.send(operation: "ListGroupMemberships", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members", httpMethod: "GET", input: input)
    }

    ///  Lists all user groups in Amazon QuickSight.  The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/*. The response is a list of group objects. 
    public func listGroups(_ input: ListGroupsRequest) throws -> ListGroupsResponse {
        return try client.send(operation: "ListGroups", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups", httpMethod: "GET", input: input)
    }

    ///  Lists the Amazon QuickSight groups that a user is part of.
    public func listUserGroups(_ input: ListUserGroupsRequest) throws -> ListUserGroupsResponse {
        return try client.send(operation: "ListUserGroups", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups", httpMethod: "GET", input: input)
    }

    ///  Returns a list of all of the Amazon QuickSight users belonging to this account.  The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/* . The response is a list of user objects, containing each user's Amazon Resource Name (ARN), AWS Identity and Access Management (IAM) role, and email address. 
    public func listUsers(_ input: ListUsersRequest) throws -> ListUsersResponse {
        return try client.send(operation: "ListUsers", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", httpMethod: "GET", input: input)
    }

    ///  Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request.  The permission resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:user/default/&lt;user-name&gt; . The condition resource is the Amazon Resource Name (ARN) for the IAM user or role, and the session name.  The condition keys are quicksight:IamArn and quicksight:SessionName. 
    public func registerUser(_ input: RegisterUserRequest) throws -> RegisterUserResponse {
        return try client.send(operation: "RegisterUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users", httpMethod: "POST", input: input)
    }

    ///  Changes a group description.  The permissions resource is arn:aws:quicksight:us-east-1:&lt;aws-account-id&gt;:group/default/&lt;group-name&gt; . The response is a group object.
    public func updateGroup(_ input: UpdateGroupRequest) throws -> UpdateGroupResponse {
        return try client.send(operation: "UpdateGroup", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}", httpMethod: "PUT", input: input)
    }

    ///  Updates an Amazon QuickSight user.
    public func updateUser(_ input: UpdateUserRequest) throws -> UpdateUserResponse {
        return try client.send(operation: "UpdateUser", path: "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}", httpMethod: "PUT", input: input)
    }


}