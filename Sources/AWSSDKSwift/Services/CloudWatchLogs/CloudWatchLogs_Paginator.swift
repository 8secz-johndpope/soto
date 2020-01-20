// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension CloudWatchLogs {

    ///  Lists all your destinations. The results are ASCII-sorted by destination name.
    public func describeDestinationsPaginator(_ input: DescribeDestinationsRequest) -> EventLoopFuture<[Destination]> {
        return client.paginate(input: input, command: describeDestinations, resultKey: \DescribeDestinationsResponse.destinations, tokenKey: \DescribeDestinationsResponse.nextToken)
    }
    
    ///  Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.
    public func describeLogGroupsPaginator(_ input: DescribeLogGroupsRequest) -> EventLoopFuture<[LogGroup]> {
        return client.paginate(input: input, command: describeLogGroups, resultKey: \DescribeLogGroupsResponse.logGroups, tokenKey: \DescribeLogGroupsResponse.nextToken)
    }
    
    ///  Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. This operation has a limit of five transactions per second, after which transactions are throttled.
    public func describeLogStreamsPaginator(_ input: DescribeLogStreamsRequest) -> EventLoopFuture<[LogStream]> {
        return client.paginate(input: input, command: describeLogStreams, resultKey: \DescribeLogStreamsResponse.logStreams, tokenKey: \DescribeLogStreamsResponse.nextToken)
    }
    
    ///  Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
    public func describeMetricFiltersPaginator(_ input: DescribeMetricFiltersRequest) -> EventLoopFuture<[MetricFilter]> {
        return client.paginate(input: input, command: describeMetricFilters, resultKey: \DescribeMetricFiltersResponse.metricFilters, tokenKey: \DescribeMetricFiltersResponse.nextToken)
    }
    
    ///  Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
    public func describeSubscriptionFiltersPaginator(_ input: DescribeSubscriptionFiltersRequest) -> EventLoopFuture<[SubscriptionFilter]> {
        return client.paginate(input: input, command: describeSubscriptionFilters, resultKey: \DescribeSubscriptionFiltersResponse.subscriptionFilters, tokenKey: \DescribeSubscriptionFiltersResponse.nextToken)
    }
    
    ///  Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.
    public func filterLogEventsPaginator(_ input: FilterLogEventsRequest) -> EventLoopFuture<[FilteredLogEvent]> {
        return client.paginate(input: input, command: filterLogEvents, resultKey: \FilterLogEventsResponse.events, tokenKey: \FilterLogEventsResponse.nextToken)
    }
    
    ///  Lists log events from the specified log stream. You can list all the log events or filter using a time range. By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). You can get additional log events by specifying one of the tokens in a subsequent call.
    public func getLogEventsPaginator(_ input: GetLogEventsRequest) -> EventLoopFuture<[OutputLogEvent]> {
        return client.paginate(input: input, command: getLogEvents, resultKey: \GetLogEventsResponse.events, tokenKey: \GetLogEventsResponse.nextForwardToken)
    }
    
}

extension CloudWatchLogs.DescribeDestinationsRequest: AWSPaginateStringToken {
    public init(_ original: CloudWatchLogs.DescribeDestinationsRequest, token: String) {
        self.init(
            destinationNamePrefix: original.destinationNamePrefix, 
            limit: original.limit, 
            nextToken: token
        )
    }
}

extension CloudWatchLogs.DescribeLogGroupsRequest: AWSPaginateStringToken {
    public init(_ original: CloudWatchLogs.DescribeLogGroupsRequest, token: String) {
        self.init(
            limit: original.limit, 
            logGroupNamePrefix: original.logGroupNamePrefix, 
            nextToken: token
        )
    }
}

extension CloudWatchLogs.DescribeLogStreamsRequest: AWSPaginateStringToken {
    public init(_ original: CloudWatchLogs.DescribeLogStreamsRequest, token: String) {
        self.init(
            descending: original.descending, 
            limit: original.limit, 
            logGroupName: original.logGroupName, 
            logStreamNamePrefix: original.logStreamNamePrefix, 
            nextToken: token, 
            orderBy: original.orderBy
        )
    }
}

extension CloudWatchLogs.DescribeMetricFiltersRequest: AWSPaginateStringToken {
    public init(_ original: CloudWatchLogs.DescribeMetricFiltersRequest, token: String) {
        self.init(
            filterNamePrefix: original.filterNamePrefix, 
            limit: original.limit, 
            logGroupName: original.logGroupName, 
            metricName: original.metricName, 
            metricNamespace: original.metricNamespace, 
            nextToken: token
        )
    }
}

extension CloudWatchLogs.DescribeSubscriptionFiltersRequest: AWSPaginateStringToken {
    public init(_ original: CloudWatchLogs.DescribeSubscriptionFiltersRequest, token: String) {
        self.init(
            filterNamePrefix: original.filterNamePrefix, 
            limit: original.limit, 
            logGroupName: original.logGroupName, 
            nextToken: token
        )
    }
}

extension CloudWatchLogs.FilterLogEventsRequest: AWSPaginateStringToken {
    public init(_ original: CloudWatchLogs.FilterLogEventsRequest, token: String) {
        self.init(
            endTime: original.endTime, 
            filterPattern: original.filterPattern, 
            limit: original.limit, 
            logGroupName: original.logGroupName, 
            logStreamNamePrefix: original.logStreamNamePrefix, 
            logStreamNames: original.logStreamNames, 
            nextToken: token, 
            startTime: original.startTime
        )
    }
}

extension CloudWatchLogs.GetLogEventsRequest: AWSPaginateStringToken {
    public init(_ original: CloudWatchLogs.GetLogEventsRequest, token: String) {
        self.init(
            endTime: original.endTime, 
            limit: original.limit, 
            logGroupName: original.logGroupName, 
            logStreamName: original.logStreamName, 
            nextToken: token, 
            startFromHead: original.startFromHead, 
            startTime: original.startTime
        )
    }
}


