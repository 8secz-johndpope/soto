// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension ApplicationDiscoveryService {

    ///  Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.
    public func describeContinuousExportsPaginator(_ input: DescribeContinuousExportsRequest) -> EventLoopFuture<[ContinuousExportDescription]> {
        return client.paginate(input: input, command: describeContinuousExports, resultKey: \DescribeContinuousExportsResponse.descriptions, tokenKey: \DescribeContinuousExportsResponse.nextToken)
    }
    
    ///  Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
    public func describeImportTasksPaginator(_ input: DescribeImportTasksRequest) -> EventLoopFuture<[ImportTask]> {
        return client.paginate(input: input, command: describeImportTasks, resultKey: \DescribeImportTasksResponse.tasks, tokenKey: \DescribeImportTasksResponse.nextToken)
    }
    
}

extension ApplicationDiscoveryService.DescribeContinuousExportsRequest: AWSPaginateStringToken {
    public init(_ original: ApplicationDiscoveryService.DescribeContinuousExportsRequest, token: String) {
        self.init(
            exportIds: original.exportIds, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension ApplicationDiscoveryService.DescribeImportTasksRequest: AWSPaginateStringToken {
    public init(_ original: ApplicationDiscoveryService.DescribeImportTasksRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


