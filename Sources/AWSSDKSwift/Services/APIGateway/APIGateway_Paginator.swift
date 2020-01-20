// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension APIGateway {

    ///  Gets information about the current ApiKeys resource.
    public func getApiKeysPaginator(_ input: GetApiKeysRequest) -> EventLoopFuture<[ApiKey]> {
        return client.paginate(input: input, command: getApiKeys, resultKey: \ApiKeys.items, tokenKey: \ApiKeys.position)
    }
    
    ///  Represents a collection of BasePathMapping resources.
    public func getBasePathMappingsPaginator(_ input: GetBasePathMappingsRequest) -> EventLoopFuture<[BasePathMapping]> {
        return client.paginate(input: input, command: getBasePathMappings, resultKey: \BasePathMappings.items, tokenKey: \BasePathMappings.position)
    }
    
    ///  Gets a collection of ClientCertificate resources.
    public func getClientCertificatesPaginator(_ input: GetClientCertificatesRequest) -> EventLoopFuture<[ClientCertificate]> {
        return client.paginate(input: input, command: getClientCertificates, resultKey: \ClientCertificates.items, tokenKey: \ClientCertificates.position)
    }
    
    ///  Gets information about a Deployments collection.
    public func getDeploymentsPaginator(_ input: GetDeploymentsRequest) -> EventLoopFuture<[Deployment]> {
        return client.paginate(input: input, command: getDeployments, resultKey: \Deployments.items, tokenKey: \Deployments.position)
    }
    
    ///  Represents a collection of DomainName resources.
    public func getDomainNamesPaginator(_ input: GetDomainNamesRequest) -> EventLoopFuture<[DomainName]> {
        return client.paginate(input: input, command: getDomainNames, resultKey: \DomainNames.items, tokenKey: \DomainNames.position)
    }
    
    ///  Describes existing Models defined for a RestApi resource.
    public func getModelsPaginator(_ input: GetModelsRequest) -> EventLoopFuture<[Model]> {
        return client.paginate(input: input, command: getModels, resultKey: \Models.items, tokenKey: \Models.position)
    }
    
    ///  Lists information about a collection of Resource resources.
    public func getResourcesPaginator(_ input: GetResourcesRequest) -> EventLoopFuture<[Resource]> {
        return client.paginate(input: input, command: getResources, resultKey: \Resources.items, tokenKey: \Resources.position)
    }
    
    ///  Lists the RestApis resources for your collection.
    public func getRestApisPaginator(_ input: GetRestApisRequest) -> EventLoopFuture<[RestApi]> {
        return client.paginate(input: input, command: getRestApis, resultKey: \RestApis.items, tokenKey: \RestApis.position)
    }
    
    ///  Gets all the usage plan keys representing the API keys added to a specified usage plan.
    public func getUsagePlanKeysPaginator(_ input: GetUsagePlanKeysRequest) -> EventLoopFuture<[UsagePlanKey]> {
        return client.paginate(input: input, command: getUsagePlanKeys, resultKey: \UsagePlanKeys.items, tokenKey: \UsagePlanKeys.position)
    }
    
    ///  Gets all the usage plans of the caller's account.
    public func getUsagePlansPaginator(_ input: GetUsagePlansRequest) -> EventLoopFuture<[UsagePlan]> {
        return client.paginate(input: input, command: getUsagePlans, resultKey: \UsagePlans.items, tokenKey: \UsagePlans.position)
    }
    
    ///  Gets the VpcLinks collection under the caller's account in a selected region.
    public func getVpcLinksPaginator(_ input: GetVpcLinksRequest) -> EventLoopFuture<[VpcLink]> {
        return client.paginate(input: input, command: getVpcLinks, resultKey: \VpcLinks.items, tokenKey: \VpcLinks.position)
    }
    
}

extension APIGateway.GetApiKeysRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetApiKeysRequest, token: String) {
        self.init(
            customerId: original.customerId, 
            includeValues: original.includeValues, 
            limit: original.limit, 
            nameQuery: original.nameQuery, 
            position: token
        )
    }
}

extension APIGateway.GetBasePathMappingsRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetBasePathMappingsRequest, token: String) {
        self.init(
            domainName: original.domainName, 
            limit: original.limit, 
            position: token
        )
    }
}

extension APIGateway.GetClientCertificatesRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetClientCertificatesRequest, token: String) {
        self.init(
            limit: original.limit, 
            position: token
        )
    }
}

extension APIGateway.GetDeploymentsRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetDeploymentsRequest, token: String) {
        self.init(
            limit: original.limit, 
            position: token, 
            restApiId: original.restApiId
        )
    }
}

extension APIGateway.GetDomainNamesRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetDomainNamesRequest, token: String) {
        self.init(
            limit: original.limit, 
            position: token
        )
    }
}

extension APIGateway.GetModelsRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetModelsRequest, token: String) {
        self.init(
            limit: original.limit, 
            position: token, 
            restApiId: original.restApiId
        )
    }
}

extension APIGateway.GetResourcesRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetResourcesRequest, token: String) {
        self.init(
            embed: original.embed, 
            limit: original.limit, 
            position: token, 
            restApiId: original.restApiId
        )
    }
}

extension APIGateway.GetRestApisRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetRestApisRequest, token: String) {
        self.init(
            limit: original.limit, 
            position: token
        )
    }
}

extension APIGateway.GetUsagePlanKeysRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetUsagePlanKeysRequest, token: String) {
        self.init(
            limit: original.limit, 
            nameQuery: original.nameQuery, 
            position: token, 
            usagePlanId: original.usagePlanId
        )
    }
}

extension APIGateway.GetUsagePlansRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetUsagePlansRequest, token: String) {
        self.init(
            keyId: original.keyId, 
            limit: original.limit, 
            position: token
        )
    }
}

extension APIGateway.GetVpcLinksRequest: AWSPaginateStringToken {
    public init(_ original: APIGateway.GetVpcLinksRequest, token: String) {
        self.init(
            limit: original.limit, 
            position: token
        )
    }
}


