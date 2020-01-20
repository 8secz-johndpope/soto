// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension DataExchange {

    ///  This operation lists a data set's revisions sorted by CreatedAt in descending order.
    public func listDataSetRevisionsPaginator(_ input: ListDataSetRevisionsRequest) -> EventLoopFuture<[RevisionEntry]> {
        return client.paginate(input: input, command: listDataSetRevisions, resultKey: \ListDataSetRevisionsResponse.revisions, tokenKey: \ListDataSetRevisionsResponse.nextToken)
    }
    
    ///  This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    public func listDataSetsPaginator(_ input: ListDataSetsRequest) -> EventLoopFuture<[DataSetEntry]> {
        return client.paginate(input: input, command: listDataSets, resultKey: \ListDataSetsResponse.dataSets, tokenKey: \ListDataSetsResponse.nextToken)
    }
    
    ///  This operation lists your jobs sorted by CreatedAt in descending order.
    public func listJobsPaginator(_ input: ListJobsRequest) -> EventLoopFuture<[JobEntry]> {
        return client.paginate(input: input, command: listJobs, resultKey: \ListJobsResponse.jobs, tokenKey: \ListJobsResponse.nextToken)
    }
    
    ///  This operation lists a revision's assets sorted alphabetically in descending order.
    public func listRevisionAssetsPaginator(_ input: ListRevisionAssetsRequest) -> EventLoopFuture<[AssetEntry]> {
        return client.paginate(input: input, command: listRevisionAssets, resultKey: \ListRevisionAssetsResponse.assets, tokenKey: \ListRevisionAssetsResponse.nextToken)
    }
    
}

extension DataExchange.ListDataSetRevisionsRequest: AWSPaginateStringToken {
    public init(_ original: DataExchange.ListDataSetRevisionsRequest, token: String) {
        self.init(
            dataSetId: original.dataSetId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension DataExchange.ListDataSetsRequest: AWSPaginateStringToken {
    public init(_ original: DataExchange.ListDataSetsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            origin: original.origin
        )
    }
}

extension DataExchange.ListJobsRequest: AWSPaginateStringToken {
    public init(_ original: DataExchange.ListJobsRequest, token: String) {
        self.init(
            dataSetId: original.dataSetId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            revisionId: original.revisionId
        )
    }
}

extension DataExchange.ListRevisionAssetsRequest: AWSPaginateStringToken {
    public init(_ original: DataExchange.ListRevisionAssetsRequest, token: String) {
        self.init(
            dataSetId: original.dataSetId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            revisionId: original.revisionId
        )
    }
}


