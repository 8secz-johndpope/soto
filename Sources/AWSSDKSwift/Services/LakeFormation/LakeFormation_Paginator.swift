// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension LakeFormation {

    ///  Returns the permissions for a specified table or database resource located at a path in Amazon S3.
    public func getEffectivePermissionsForPathPaginator(_ input: GetEffectivePermissionsForPathRequest) -> EventLoopFuture<[PrincipalResourcePermissions]> {
        return client.paginate(input: input, command: getEffectivePermissionsForPath, resultKey: \GetEffectivePermissionsForPathResponse.permissions, tokenKey: \GetEffectivePermissionsForPathResponse.nextToken)
    }
    
    ///  Returns a list of the principal permissions on the resource, filtered by the permissions of the caller. For example, if you are granted an ALTER permission, you are able to see only the principal permissions for ALTER. This operation returns only those permissions that have been explicitly granted. For information about permissions, see Security and Access Control to Metadata and Data.
    public func listPermissionsPaginator(_ input: ListPermissionsRequest) -> EventLoopFuture<[PrincipalResourcePermissions]> {
        return client.paginate(input: input, command: listPermissions, resultKey: \ListPermissionsResponse.principalResourcePermissions, tokenKey: \ListPermissionsResponse.nextToken)
    }
    
    ///  Lists the resources registered to be managed by the Data Catalog.
    public func listResourcesPaginator(_ input: ListResourcesRequest) -> EventLoopFuture<[ResourceInfo]> {
        return client.paginate(input: input, command: listResources, resultKey: \ListResourcesResponse.resourceInfoList, tokenKey: \ListResourcesResponse.nextToken)
    }
    
}

extension LakeFormation.GetEffectivePermissionsForPathRequest: AWSPaginateStringToken {
    public init(_ original: LakeFormation.GetEffectivePermissionsForPathRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            resourceArn: original.resourceArn
        )
    }
}

extension LakeFormation.ListPermissionsRequest: AWSPaginateStringToken {
    public init(_ original: LakeFormation.ListPermissionsRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            principal: original.principal, 
            resource: original.resource, 
            resourceType: original.resourceType
        )
    }
}

extension LakeFormation.ListResourcesRequest: AWSPaginateStringToken {
    public init(_ original: LakeFormation.ListResourcesRequest, token: String) {
        self.init(
            filterConditionList: original.filterConditionList, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


