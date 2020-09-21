// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension IdentityStore {
    //MARK: Enums

    //MARK: Shapes

    public struct DescribeGroupRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "GroupId", required: true, type: .string), 
            AWSShapeMember(label: "IdentityStoreId", required: true, type: .string)
        ]

        /// The identifier for a group in the identity store.
        public let groupId: String
        /// The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.
        public let identityStoreId: String

        public init(groupId: String, identityStoreId: String) {
            self.groupId = groupId
            self.identityStoreId = identityStoreId
        }

        public func validate(name: String) throws {
            try validate(self.groupId, name:"groupId", parent: name, max: 47)
            try validate(self.groupId, name:"groupId", parent: name, min: 1)
            try validate(self.groupId, name:"groupId", parent: name, pattern: "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$")
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, max: 12)
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, min: 1)
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, pattern: "^d-[0-9a-f]{10}$")
        }

        private enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case identityStoreId = "IdentityStoreId"
        }
    }

    public struct DescribeGroupResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DisplayName", required: true, type: .string), 
            AWSShapeMember(label: "GroupId", required: true, type: .string)
        ]

        /// Contains the group’s display name value. The length limit is 1024 characters. This value can consist of letters, accented characters, symbols, numbers, punctuation, tab, new line, carriage return, space and non breaking space in this attribute. The characters “&lt;&gt;;:%” are excluded. This value is specified at the time the group is created and stored as an attribute of the group object in the identity store.
        public let displayName: String
        /// The identifier for a group in the identity store.
        public let groupId: String

        public init(displayName: String, groupId: String) {
            self.displayName = displayName
            self.groupId = groupId
        }

        private enum CodingKeys: String, CodingKey {
            case displayName = "DisplayName"
            case groupId = "GroupId"
        }
    }

    public struct DescribeUserRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "IdentityStoreId", required: true, type: .string), 
            AWSShapeMember(label: "UserId", required: true, type: .string)
        ]

        /// The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.
        public let identityStoreId: String
        /// The identifier for a user in the identity store.
        public let userId: String

        public init(identityStoreId: String, userId: String) {
            self.identityStoreId = identityStoreId
            self.userId = userId
        }

        public func validate(name: String) throws {
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, max: 12)
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, min: 1)
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, pattern: "^d-[0-9a-f]{10}$")
            try validate(self.userId, name:"userId", parent: name, max: 47)
            try validate(self.userId, name:"userId", parent: name, min: 1)
            try validate(self.userId, name:"userId", parent: name, pattern: "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$")
        }

        private enum CodingKeys: String, CodingKey {
            case identityStoreId = "IdentityStoreId"
            case userId = "UserId"
        }
    }

    public struct DescribeUserResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "UserId", required: true, type: .string), 
            AWSShapeMember(label: "UserName", required: true, type: .string)
        ]

        /// The identifier for a user in the identity store.
        public let userId: String
        /// Contains the user’s username value. The length limit is 128 characters. This value can consist of letters, accented characters, symbols, numbers and punctuation. The characters “&lt;&gt;;:%” are excluded. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store.
        public let userName: String

        public init(userId: String, userName: String) {
            self.userId = userId
            self.userName = userName
        }

        private enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userName = "UserName"
        }
    }

    public struct Filter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AttributePath", required: true, type: .string), 
            AWSShapeMember(label: "AttributeValue", required: true, type: .string)
        ]

        /// The attribute path used to specify which attribute name to search. Length limit is 255 characters. For example, UserName is a valid attribute path for the ListUsers API, and DisplayName is a valid attribute path for the ListGroups API.
        public let attributePath: String
        /// Represents the data for an attribute. Each attribute value is described as a name-value pair. 
        public let attributeValue: String

        public init(attributePath: String, attributeValue: String) {
            self.attributePath = attributePath
            self.attributeValue = attributeValue
        }

        public func validate(name: String) throws {
            try validate(self.attributePath, name:"attributePath", parent: name, max: 255)
            try validate(self.attributePath, name:"attributePath", parent: name, min: 1)
            try validate(self.attributePath, name:"attributePath", parent: name, pattern: "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}  ]+")
            try validate(self.attributeValue, name:"attributeValue", parent: name, max: 1024)
            try validate(self.attributeValue, name:"attributeValue", parent: name, min: 1)
            try validate(self.attributeValue, name:"attributeValue", parent: name, pattern: "[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  ]+")
        }

        private enum CodingKeys: String, CodingKey {
            case attributePath = "AttributePath"
            case attributeValue = "AttributeValue"
        }
    }

    public struct Group: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DisplayName", required: true, type: .string), 
            AWSShapeMember(label: "GroupId", required: true, type: .string)
        ]

        /// Contains the group’s display name value. The length limit is 1024 characters. This value can consist of letters, accented characters, symbols, numbers, punctuation, tab, new line, carriage return, space and non breaking space in this attribute. The characters “&lt;&gt;;:%” are excluded. This value is specified at the time the group is created and stored as an attribute of the group object in the identity store.
        public let displayName: String
        /// The identifier for a group in the identity store.
        public let groupId: String

        public init(displayName: String, groupId: String) {
            self.displayName = displayName
            self.groupId = groupId
        }

        private enum CodingKeys: String, CodingKey {
            case displayName = "DisplayName"
            case groupId = "GroupId"
        }
    }

    public struct ListGroupsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Filters", required: false, type: .list), 
            AWSShapeMember(label: "IdentityStoreId", required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]

        /// A list of Filter objects, which is used in the ListUsers and ListGroups request. 
        public let filters: [Filter]?
        /// The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.
        public let identityStoreId: String
        /// The maximum number of results to be returned per request, which is used in the ListUsers and ListGroups request to specify how many results to return in one page. The length limit is 50 characters.
        public let maxResults: Int?
        /// The pagination token used for the ListUsers and ListGroups APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.
        public let nextToken: String?

        public init(filters: [Filter]? = nil, identityStoreId: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.identityStoreId = identityStoreId
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filters?.forEach {
                try $0.validate(name: "\(name).filters[]")
            }
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, max: 12)
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, min: 1)
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, pattern: "^d-[0-9a-f]{10}$")
            try validate(self.maxResults, name:"maxResults", parent: name, max: 50)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 65535)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[-a-zA-Z0-9+=/:]*")
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case identityStoreId = "IdentityStoreId"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListGroupsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Groups", required: true, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]

        /// A list of Group objects in the identity store.
        public let groups: [Group]
        /// The pagination token used for the ListUsers and ListGroups APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.
        public let nextToken: String?

        public init(groups: [Group], nextToken: String? = nil) {
            self.groups = groups
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case groups = "Groups"
            case nextToken = "NextToken"
        }
    }

    public struct ListUsersRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Filters", required: false, type: .list), 
            AWSShapeMember(label: "IdentityStoreId", required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]

        /// A list of Filter objects, which is used in the ListUsers and ListGroups request. 
        public let filters: [Filter]?
        /// The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.
        public let identityStoreId: String
        /// The maximum number of results to be returned per request, which is used in the ListUsers and ListGroups request to specify how many results to return in one page. The length limit is 50 characters.
        public let maxResults: Int?
        /// The pagination token used for the ListUsers and ListGroups APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.
        public let nextToken: String?

        public init(filters: [Filter]? = nil, identityStoreId: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.identityStoreId = identityStoreId
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filters?.forEach {
                try $0.validate(name: "\(name).filters[]")
            }
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, max: 12)
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, min: 1)
            try validate(self.identityStoreId, name:"identityStoreId", parent: name, pattern: "^d-[0-9a-f]{10}$")
            try validate(self.maxResults, name:"maxResults", parent: name, max: 50)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 65535)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: "^[-a-zA-Z0-9+=/:]*")
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case identityStoreId = "IdentityStoreId"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListUsersResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Users", required: true, type: .list)
        ]

        /// The pagination token used for the ListUsers and ListGroups APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.
        public let nextToken: String?
        /// A list of User objects in the identity store.
        public let users: [User]

        public init(nextToken: String? = nil, users: [User]) {
            self.nextToken = nextToken
            self.users = users
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case users = "Users"
        }
    }

    public struct User: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "UserId", required: true, type: .string), 
            AWSShapeMember(label: "UserName", required: true, type: .string)
        ]

        /// The identifier for a user in the identity store.
        public let userId: String
        /// Contains the user’s username value. The length limit is 128 characters. This value can consist of letters, accented characters, symbols, numbers and punctuation. The characters “&lt;&gt;;:%” are excluded. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store.
        public let userName: String

        public init(userId: String, userName: String) {
            self.userId = userId
            self.userName = userName
        }

        private enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userName = "UserName"
        }
    }
}