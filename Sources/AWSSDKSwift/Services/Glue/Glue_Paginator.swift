// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Glue {

    ///  Lists all classifier objects in the Data Catalog.
    public func getClassifiersPaginator(_ input: GetClassifiersRequest) -> EventLoopFuture<[Classifier]> {
        return client.paginate(input: input, command: getClassifiers, resultKey: \GetClassifiersResponse.classifiers, tokenKey: \GetClassifiersResponse.nextToken)
    }
    
    ///  Retrieves a list of connection definitions from the Data Catalog.
    public func getConnectionsPaginator(_ input: GetConnectionsRequest) -> EventLoopFuture<[Connection]> {
        return client.paginate(input: input, command: getConnections, resultKey: \GetConnectionsResponse.connectionList, tokenKey: \GetConnectionsResponse.nextToken)
    }
    
    ///  Retrieves metrics about specified crawlers.
    public func getCrawlerMetricsPaginator(_ input: GetCrawlerMetricsRequest) -> EventLoopFuture<[CrawlerMetrics]> {
        return client.paginate(input: input, command: getCrawlerMetrics, resultKey: \GetCrawlerMetricsResponse.crawlerMetricsList, tokenKey: \GetCrawlerMetricsResponse.nextToken)
    }
    
    ///  Retrieves metadata for all crawlers defined in the customer account.
    public func getCrawlersPaginator(_ input: GetCrawlersRequest) -> EventLoopFuture<[Crawler]> {
        return client.paginate(input: input, command: getCrawlers, resultKey: \GetCrawlersResponse.crawlers, tokenKey: \GetCrawlersResponse.nextToken)
    }
    
    ///  Retrieves all databases defined in a given Data Catalog.
    public func getDatabasesPaginator(_ input: GetDatabasesRequest) -> EventLoopFuture<[Database]> {
        return client.paginate(input: input, command: getDatabases, resultKey: \GetDatabasesResponse.databaseList, tokenKey: \GetDatabasesResponse.nextToken)
    }
    
    ///  Retrieves all the development endpoints in this AWS account.  When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address. 
    public func getDevEndpointsPaginator(_ input: GetDevEndpointsRequest) -> EventLoopFuture<[DevEndpoint]> {
        return client.paginate(input: input, command: getDevEndpoints, resultKey: \GetDevEndpointsResponse.devEndpoints, tokenKey: \GetDevEndpointsResponse.nextToken)
    }
    
    ///  Retrieves metadata for all runs of a given job definition.
    public func getJobRunsPaginator(_ input: GetJobRunsRequest) -> EventLoopFuture<[JobRun]> {
        return client.paginate(input: input, command: getJobRuns, resultKey: \GetJobRunsResponse.jobRuns, tokenKey: \GetJobRunsResponse.nextToken)
    }
    
    ///  Retrieves all current job definitions.
    public func getJobsPaginator(_ input: GetJobsRequest) -> EventLoopFuture<[Job]> {
        return client.paginate(input: input, command: getJobs, resultKey: \GetJobsResponse.jobs, tokenKey: \GetJobsResponse.nextToken)
    }
    
    ///  Gets a list of runs for a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can get a sortable, filterable list of machine learning task runs by calling GetMLTaskRuns with their parent transform's TransformID and other optional parameters as documented in this section. This operation returns a list of historic runs and must be paginated.
    public func getMLTaskRunsPaginator(_ input: GetMLTaskRunsRequest) -> EventLoopFuture<[TaskRun]> {
        return client.paginate(input: input, command: getMLTaskRuns, resultKey: \GetMLTaskRunsResponse.taskRuns, tokenKey: \GetMLTaskRunsResponse.nextToken)
    }
    
    ///  Gets a sortable, filterable list of existing AWS Glue machine learning transforms. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue, and you can retrieve their metadata by calling GetMLTransforms.
    public func getMLTransformsPaginator(_ input: GetMLTransformsRequest) -> EventLoopFuture<[MLTransform]> {
        return client.paginate(input: input, command: getMLTransforms, resultKey: \GetMLTransformsResponse.transforms, tokenKey: \GetMLTransformsResponse.nextToken)
    }
    
    ///  Retrieves information about the partitions in a table.
    public func getPartitionsPaginator(_ input: GetPartitionsRequest) -> EventLoopFuture<[Partition]> {
        return client.paginate(input: input, command: getPartitions, resultKey: \GetPartitionsResponse.partitions, tokenKey: \GetPartitionsResponse.nextToken)
    }
    
    ///  Retrieves a list of all security configurations.
    public func getSecurityConfigurationsPaginator(_ input: GetSecurityConfigurationsRequest) -> EventLoopFuture<[SecurityConfiguration]> {
        return client.paginate(input: input, command: getSecurityConfigurations, resultKey: \GetSecurityConfigurationsResponse.securityConfigurations, tokenKey: \GetSecurityConfigurationsResponse.nextToken)
    }
    
    ///  Retrieves a list of strings that identify available versions of a specified table.
    public func getTableVersionsPaginator(_ input: GetTableVersionsRequest) -> EventLoopFuture<[TableVersion]> {
        return client.paginate(input: input, command: getTableVersions, resultKey: \GetTableVersionsResponse.tableVersions, tokenKey: \GetTableVersionsResponse.nextToken)
    }
    
    ///  Retrieves the definitions of some or all of the tables in a given Database.
    public func getTablesPaginator(_ input: GetTablesRequest) -> EventLoopFuture<[Table]> {
        return client.paginate(input: input, command: getTables, resultKey: \GetTablesResponse.tableList, tokenKey: \GetTablesResponse.nextToken)
    }
    
    ///  Gets all the triggers associated with a job.
    public func getTriggersPaginator(_ input: GetTriggersRequest) -> EventLoopFuture<[Trigger]> {
        return client.paginate(input: input, command: getTriggers, resultKey: \GetTriggersResponse.triggers, tokenKey: \GetTriggersResponse.nextToken)
    }
    
    ///  Retrieves multiple function definitions from the Data Catalog.
    public func getUserDefinedFunctionsPaginator(_ input: GetUserDefinedFunctionsRequest) -> EventLoopFuture<[UserDefinedFunction]> {
        return client.paginate(input: input, command: getUserDefinedFunctions, resultKey: \GetUserDefinedFunctionsResponse.userDefinedFunctions, tokenKey: \GetUserDefinedFunctionsResponse.nextToken)
    }
    
    ///  Retrieves metadata for all runs of a given workflow.
    public func getWorkflowRunsPaginator(_ input: GetWorkflowRunsRequest) -> EventLoopFuture<[WorkflowRun]> {
        return client.paginate(input: input, command: getWorkflowRuns, resultKey: \GetWorkflowRunsResponse.runs, tokenKey: \GetWorkflowRunsResponse.nextToken)
    }
    
    ///  Retrieves the names of all crawler resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    public func listCrawlersPaginator(_ input: ListCrawlersRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listCrawlers, resultKey: \ListCrawlersResponse.crawlerNames, tokenKey: \ListCrawlersResponse.nextToken)
    }
    
    ///  Retrieves the names of all DevEndpoint resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    public func listDevEndpointsPaginator(_ input: ListDevEndpointsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listDevEndpoints, resultKey: \ListDevEndpointsResponse.devEndpointNames, tokenKey: \ListDevEndpointsResponse.nextToken)
    }
    
    ///  Retrieves the names of all job resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    public func listJobsPaginator(_ input: ListJobsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listJobs, resultKey: \ListJobsResponse.jobNames, tokenKey: \ListJobsResponse.nextToken)
    }
    
    ///  Retrieves the names of all trigger resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names. This operation takes the optional Tags field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.
    public func listTriggersPaginator(_ input: ListTriggersRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listTriggers, resultKey: \ListTriggersResponse.triggerNames, tokenKey: \ListTriggersResponse.nextToken)
    }
    
    ///  Lists names of workflows created in the account.
    public func listWorkflowsPaginator(_ input: ListWorkflowsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listWorkflows, resultKey: \ListWorkflowsResponse.workflows, tokenKey: \ListWorkflowsResponse.nextToken)
    }
    
    ///  Searches a set of tables based on properties in the table metadata as well as on the parent database. You can search against text or filter conditions.  You can only get tables that you have access to based on the security policies defined in Lake Formation. You need at least a read-only access to the table for it to be returned. If you do not have access to all the columns in the table, these columns will not be searched against when returning the list of tables back to you. If you have access to the columns but not the data in the columns, those columns and the associated metadata for those columns will be included in the search. 
    public func searchTablesPaginator(_ input: SearchTablesRequest) -> EventLoopFuture<[Table]> {
        return client.paginate(input: input, command: searchTables, resultKey: \SearchTablesResponse.tableList, tokenKey: \SearchTablesResponse.nextToken)
    }
    
}

extension Glue.GetClassifiersRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetClassifiersRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetConnectionsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetConnectionsRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            filter: original.filter, 
            hidePassword: original.hidePassword, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetCrawlerMetricsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetCrawlerMetricsRequest, token: String) {
        self.init(
            crawlerNameList: original.crawlerNameList, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetCrawlersRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetCrawlersRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetDatabasesRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetDatabasesRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetDevEndpointsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetDevEndpointsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetJobRunsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetJobRunsRequest, token: String) {
        self.init(
            jobName: original.jobName, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetJobsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetJobsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetMLTaskRunsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetMLTaskRunsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sort: original.sort, 
            transformId: original.transformId
        )
    }
}

extension Glue.GetMLTransformsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetMLTransformsRequest, token: String) {
        self.init(
            filter: original.filter, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sort: original.sort
        )
    }
}

extension Glue.GetPartitionsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetPartitionsRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            databaseName: original.databaseName, 
            expression: original.expression, 
            maxResults: original.maxResults, 
            nextToken: token, 
            segment: original.segment, 
            tableName: original.tableName
        )
    }
}

extension Glue.GetSecurityConfigurationsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetSecurityConfigurationsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetTableVersionsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetTableVersionsRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            databaseName: original.databaseName, 
            maxResults: original.maxResults, 
            nextToken: token, 
            tableName: original.tableName
        )
    }
}

extension Glue.GetTablesRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetTablesRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            databaseName: original.databaseName, 
            expression: original.expression, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetTriggersRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetTriggersRequest, token: String) {
        self.init(
            dependentJobName: original.dependentJobName, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.GetUserDefinedFunctionsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetUserDefinedFunctionsRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            databaseName: original.databaseName, 
            maxResults: original.maxResults, 
            nextToken: token, 
            pattern: original.pattern
        )
    }
}

extension Glue.GetWorkflowRunsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.GetWorkflowRunsRequest, token: String) {
        self.init(
            includeGraph: original.includeGraph, 
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token
        )
    }
}

extension Glue.ListCrawlersRequest: AWSPaginateStringToken {
    public init(_ original: Glue.ListCrawlersRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            tags: original.tags
        )
    }
}

extension Glue.ListDevEndpointsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.ListDevEndpointsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            tags: original.tags
        )
    }
}

extension Glue.ListJobsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.ListJobsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token, 
            tags: original.tags
        )
    }
}

extension Glue.ListTriggersRequest: AWSPaginateStringToken {
    public init(_ original: Glue.ListTriggersRequest, token: String) {
        self.init(
            dependentJobName: original.dependentJobName, 
            maxResults: original.maxResults, 
            nextToken: token, 
            tags: original.tags
        )
    }
}

extension Glue.ListWorkflowsRequest: AWSPaginateStringToken {
    public init(_ original: Glue.ListWorkflowsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Glue.SearchTablesRequest: AWSPaginateStringToken {
    public init(_ original: Glue.SearchTablesRequest, token: String) {
        self.init(
            catalogId: original.catalogId, 
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            searchText: original.searchText, 
            sortCriteria: original.sortCriteria
        )
    }
}


