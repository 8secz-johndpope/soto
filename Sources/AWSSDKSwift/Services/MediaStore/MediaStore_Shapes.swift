// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MediaStore {

    public struct Container: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ARN", required: false, type: .string), 
            AWSShapeMember(label: "CreationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Endpoint", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Status", required: false, type: .enum)
        ]
        /// The Amazon Resource Name (ARN) of the container. The ARN has the following format: arn:aws:&lt;region&gt;:&lt;account that owns this container&gt;:container/&lt;name of container&gt;  For example: arn:aws:mediastore:us-west-2:111122223333:container/movies 
        public let arn: String?
        /// Unix timestamp.
        public let creationTime: TimeStamp?
        /// The DNS endpoint of the container. Use the endpoint to identify the specific container when sending requests to the data plane. The service assigns this value when the container is created. Once the value has been assigned, it does not change.
        public let endpoint: String?
        /// The name of the container.
        public let name: String?
        /// The status of container creation or deletion. The status is one of the following: CREATING, ACTIVE, or DELETING. While the service is creating the container, the status is CREATING. When the endpoint is available, the status changes to ACTIVE.
        public let status: ContainerStatus?

        public init(arn: String? = nil, creationTime: TimeStamp? = nil, endpoint: String? = nil, name: String? = nil, status: ContainerStatus? = nil) {
            self.arn = arn
            self.creationTime = creationTime
            self.endpoint = endpoint
            self.name = name
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "ARN"
            case creationTime = "CreationTime"
            case endpoint = "Endpoint"
            case name = "Name"
            case status = "Status"
        }
    }

    public enum ContainerStatus: String, CustomStringConvertible, Codable {
        case active = "ACTIVE"
        case creating = "CREATING"
        case deleting = "DELETING"
        public var description: String { return self.rawValue }
    }

    public struct CorsRule: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AllowedHeaders", required: false, type: .list), 
            AWSShapeMember(label: "AllowedMethods", required: false, type: .list), 
            AWSShapeMember(label: "AllowedOrigins", required: false, type: .list), 
            AWSShapeMember(label: "ExposeHeaders", required: false, type: .list), 
            AWSShapeMember(label: "MaxAgeSeconds", required: false, type: .integer)
        ]
        /// Specifies which headers are allowed in a preflight OPTIONS request through the Access-Control-Request-Headers header. Each header name that is specified in Access-Control-Request-Headers must have a corresponding entry in the rule. Only the headers that were requested are sent back.  This element can contain only one wildcard character (*).
        public let allowedHeaders: [String]?
        /// Identifies an HTTP method that the origin that is specified in the rule is allowed to execute. Each CORS rule must contain at least one AllowedMethod and one AllowedOrigin element.
        public let allowedMethods: [MethodName]?
        /// One or more response headers that you want users to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object). Each CORS rule must have at least one AllowedOrigin element. The string value can include only one wildcard character (*), for example, http://*.example.com. Additionally, you can specify only one wildcard character to allow cross-origin access for all origins.
        public let allowedOrigins: [String]?
        /// One or more headers in the response that you want users to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object). This element is optional for each rule.
        public let exposeHeaders: [String]?
        /// The time in seconds that your browser caches the preflight response for the specified resource. A CORS rule can have only one MaxAgeSeconds element.
        public let maxAgeSeconds: Int32?

        public init(allowedHeaders: [String]? = nil, allowedMethods: [MethodName]? = nil, allowedOrigins: [String]? = nil, exposeHeaders: [String]? = nil, maxAgeSeconds: Int32? = nil) {
            self.allowedHeaders = allowedHeaders
            self.allowedMethods = allowedMethods
            self.allowedOrigins = allowedOrigins
            self.exposeHeaders = exposeHeaders
            self.maxAgeSeconds = maxAgeSeconds
        }

        private enum CodingKeys: String, CodingKey {
            case allowedHeaders = "AllowedHeaders"
            case allowedMethods = "AllowedMethods"
            case allowedOrigins = "AllowedOrigins"
            case exposeHeaders = "ExposeHeaders"
            case maxAgeSeconds = "MaxAgeSeconds"
        }
    }

    public struct CreateContainerInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: true, type: .string)
        ]
        /// The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named movies in every region, as long as you don’t have an existing container with that name.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct CreateContainerOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Container", required: true, type: .structure)
        ]
        /// ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN has the following format: arn:aws:&lt;region&gt;:&lt;account that owns this container&gt;:container/&lt;name of container&gt;. For example: arn:aws:mediastore:us-west-2:111122223333:container/movies  ContainerName: The container name as specified in the request. CreationTime: Unix time stamp. Status: The status of container creation or deletion. The status is one of the following: CREATING, ACTIVE, or DELETING. While the service is creating the container, the status is CREATING. When an endpoint is available, the status changes to ACTIVE. The return value does not include the container's endpoint. To make downstream requests, you must obtain this value by using DescribeContainer or ListContainers.
        public let container: Container

        public init(container: Container) {
            self.container = container
        }

        private enum CodingKeys: String, CodingKey {
            case container = "Container"
        }
    }

    public struct DeleteContainerInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: true, type: .string)
        ]
        /// The name of the container to delete. 
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DeleteContainerOutput: AWSShape {

        public init() {
        }

    }

    public struct DeleteContainerPolicyInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: true, type: .string)
        ]
        /// The name of the container that holds the policy.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DeleteContainerPolicyOutput: AWSShape {

        public init() {
        }

    }

    public struct DeleteCorsPolicyInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: true, type: .string)
        ]
        /// The name of the container to remove the policy from.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DeleteCorsPolicyOutput: AWSShape {

        public init() {
        }

    }

    public struct DescribeContainerInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: false, type: .string)
        ]
        /// The name of the container to query.
        public let containerName: String?

        public init(containerName: String? = nil) {
            self.containerName = containerName
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DescribeContainerOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Container", required: false, type: .structure)
        ]
        /// The name of the queried container.
        public let container: Container?

        public init(container: Container? = nil) {
            self.container = container
        }

        private enum CodingKeys: String, CodingKey {
            case container = "Container"
        }
    }

    public struct GetContainerPolicyInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: true, type: .string)
        ]
        /// The name of the container. 
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct GetContainerPolicyOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Policy", required: true, type: .string)
        ]
        /// The contents of the access policy.
        public let policy: String

        public init(policy: String) {
            self.policy = policy
        }

        private enum CodingKeys: String, CodingKey {
            case policy = "Policy"
        }
    }

    public struct GetCorsPolicyInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: true, type: .string)
        ]
        /// The name of the container that the policy is assigned to.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct GetCorsPolicyOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CorsPolicy", required: true, type: .list)
        ]
        public let corsPolicy: [CorsRule]

        public init(corsPolicy: [CorsRule]) {
            self.corsPolicy = corsPolicy
        }

        private enum CodingKeys: String, CodingKey {
            case corsPolicy = "CorsPolicy"
        }
    }

    public struct ListContainersInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Enter the maximum number of containers in the response. Use from 1 to 255 characters. 
        public let maxResults: Int32?
        /// Only if you used MaxResults in the first command, enter the token (which was included in the previous response) to obtain the next set of containers. This token is included in a response only if there actually are more containers to list.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListContainersOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Containers", required: true, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The names of the containers.
        public let containers: [Container]
        ///  NextToken is the token to use in the next call to ListContainers. This token is returned only if you included the MaxResults tag in the original command, and only if there are still containers to return. 
        public let nextToken: String?

        public init(containers: [Container], nextToken: String? = nil) {
            self.containers = containers
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case containers = "Containers"
            case nextToken = "NextToken"
        }
    }

    public enum MethodName: String, CustomStringConvertible, Codable {
        case put = "PUT"
        case get = "GET"
        case delete = "DELETE"
        case head = "HEAD"
        public var description: String { return self.rawValue }
    }

    public struct PutContainerPolicyInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: true, type: .string), 
            AWSShapeMember(label: "Policy", required: true, type: .string)
        ]
        /// The name of the container.
        public let containerName: String
        /// The contents of the policy, which includes the following:    One Version tag   One Statement tag that contains the standard tags for the policy.  
        public let policy: String

        public init(containerName: String, policy: String) {
            self.containerName = containerName
            self.policy = policy
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
            case policy = "Policy"
        }
    }

    public struct PutContainerPolicyOutput: AWSShape {

        public init() {
        }

    }

    public struct PutCorsPolicyInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ContainerName", required: true, type: .string), 
            AWSShapeMember(label: "CorsPolicy", required: true, type: .list)
        ]
        /// The name of the container that you want to assign the CORS policy to.
        public let containerName: String
        /// The CORS policy to apply to the container. 
        public let corsPolicy: [CorsRule]

        public init(containerName: String, corsPolicy: [CorsRule]) {
            self.containerName = containerName
            self.corsPolicy = corsPolicy
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
            case corsPolicy = "CorsPolicy"
        }
    }

    public struct PutCorsPolicyOutput: AWSShape {

        public init() {
        }

    }

}