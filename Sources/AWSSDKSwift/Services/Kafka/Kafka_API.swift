// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
The operations for managing an Amazon MSK cluster.
*/
public struct Kafka {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "kafka",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-11-14",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [KafkaErrorType.self]
        )
    }

    ///  Creates a new MSK cluster.
    public func createCluster(_ input: CreateClusterRequest) throws -> CreateClusterResponse {
        return try client.send(operation: "CreateCluster", path: "/v1/clusters", httpMethod: "POST", input: input)
    }

    ///  Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request.
    public func deleteCluster(_ input: DeleteClusterRequest) throws -> DeleteClusterResponse {
        return try client.send(operation: "DeleteCluster", path: "/v1/clusters/{clusterArn}", httpMethod: "DELETE", input: input)
    }

    ///  Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request.
    public func describeCluster(_ input: DescribeClusterRequest) throws -> DescribeClusterResponse {
        return try client.send(operation: "DescribeCluster", path: "/v1/clusters/{clusterArn}", httpMethod: "GET", input: input)
    }

    ///  A list of brokers that a client application can use to bootstrap.
    public func getBootstrapBrokers(_ input: GetBootstrapBrokersRequest) throws -> GetBootstrapBrokersResponse {
        return try client.send(operation: "GetBootstrapBrokers", path: "/v1/clusters/{clusterArn}/bootstrap-brokers", httpMethod: "GET", input: input)
    }

    ///  Returns a list of clusters in an account.
    public func listClusters(_ input: ListClustersRequest) throws -> ListClustersResponse {
        return try client.send(operation: "ListClusters", path: "/v1/clusters", httpMethod: "GET", input: input)
    }

    ///  Returns a list of the broker nodes in the cluster.
    public func listNodes(_ input: ListNodesRequest) throws -> ListNodesResponse {
        return try client.send(operation: "ListNodes", path: "/v1/clusters/{clusterArn}/nodes", httpMethod: "GET", input: input)
    }


}