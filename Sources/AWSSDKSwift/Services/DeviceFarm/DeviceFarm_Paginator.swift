// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension DeviceFarm {

    ///  Gets information about artifacts.
    public func listArtifactsPaginator(_ input: ListArtifactsRequest) -> EventLoopFuture<[Artifact]> {
        return client.paginate(input: input, command: listArtifacts, resultKey: \ListArtifactsResult.artifacts, tokenKey: \ListArtifactsResult.nextToken)
    }
    
    ///  Gets information about device pools.
    public func listDevicePoolsPaginator(_ input: ListDevicePoolsRequest) -> EventLoopFuture<[DevicePool]> {
        return client.paginate(input: input, command: listDevicePools, resultKey: \ListDevicePoolsResult.devicePools, tokenKey: \ListDevicePoolsResult.nextToken)
    }
    
    ///  Gets information about unique device types.
    public func listDevicesPaginator(_ input: ListDevicesRequest) -> EventLoopFuture<[Device]> {
        return client.paginate(input: input, command: listDevices, resultKey: \ListDevicesResult.devices, tokenKey: \ListDevicesResult.nextToken)
    }
    
    ///  Gets information about jobs for a given test run.
    public func listJobsPaginator(_ input: ListJobsRequest) -> EventLoopFuture<[Job]> {
        return client.paginate(input: input, command: listJobs, resultKey: \ListJobsResult.jobs, tokenKey: \ListJobsResult.nextToken)
    }
    
    ///  Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferingTransactionsPaginator(_ input: ListOfferingTransactionsRequest) -> EventLoopFuture<[OfferingTransaction]> {
        return client.paginate(input: input, command: listOfferingTransactions, resultKey: \ListOfferingTransactionsResult.offeringTransactions, tokenKey: \ListOfferingTransactionsResult.nextToken)
    }
    
    ///  Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferingsPaginator(_ input: ListOfferingsRequest) -> EventLoopFuture<[Offering]> {
        return client.paginate(input: input, command: listOfferings, resultKey: \ListOfferingsResult.offerings, tokenKey: \ListOfferingsResult.nextToken)
    }
    
    ///  Gets information about projects.
    public func listProjectsPaginator(_ input: ListProjectsRequest) -> EventLoopFuture<[Project]> {
        return client.paginate(input: input, command: listProjects, resultKey: \ListProjectsResult.projects, tokenKey: \ListProjectsResult.nextToken)
    }
    
    ///  Gets information about runs, given an AWS Device Farm project ARN.
    public func listRunsPaginator(_ input: ListRunsRequest) -> EventLoopFuture<[Run]> {
        return client.paginate(input: input, command: listRuns, resultKey: \ListRunsResult.runs, tokenKey: \ListRunsResult.nextToken)
    }
    
    ///  Gets information about samples, given an AWS Device Farm job ARN.
    public func listSamplesPaginator(_ input: ListSamplesRequest) -> EventLoopFuture<[Sample]> {
        return client.paginate(input: input, command: listSamples, resultKey: \ListSamplesResult.samples, tokenKey: \ListSamplesResult.nextToken)
    }
    
    ///  Gets information about test suites for a given job.
    public func listSuitesPaginator(_ input: ListSuitesRequest) -> EventLoopFuture<[Suite]> {
        return client.paginate(input: input, command: listSuites, resultKey: \ListSuitesResult.suites, tokenKey: \ListSuitesResult.nextToken)
    }
    
    ///  Gets a list of all Selenium testing projects in your account.
    public func listTestGridProjectsPaginator(_ input: ListTestGridProjectsRequest) -> EventLoopFuture<[TestGridProject]> {
        return client.paginate(input: input, command: listTestGridProjects, resultKey: \ListTestGridProjectsResult.testGridProjects, tokenKey: \ListTestGridProjectsResult.nextToken)
    }
    
    ///  Returns a list of the actions taken in a TestGridSession.
    public func listTestGridSessionActionsPaginator(_ input: ListTestGridSessionActionsRequest) -> EventLoopFuture<[TestGridSessionAction]> {
        return client.paginate(input: input, command: listTestGridSessionActions, resultKey: \ListTestGridSessionActionsResult.actions, tokenKey: \ListTestGridSessionActionsResult.nextToken)
    }
    
    ///  Retrieves a list of artifacts created during the session.
    public func listTestGridSessionArtifactsPaginator(_ input: ListTestGridSessionArtifactsRequest) -> EventLoopFuture<[TestGridSessionArtifact]> {
        return client.paginate(input: input, command: listTestGridSessionArtifacts, resultKey: \ListTestGridSessionArtifactsResult.artifacts, tokenKey: \ListTestGridSessionArtifactsResult.nextToken)
    }
    
    ///  Retrieves a list of sessions for a TestGridProject.
    public func listTestGridSessionsPaginator(_ input: ListTestGridSessionsRequest) -> EventLoopFuture<[TestGridSession]> {
        return client.paginate(input: input, command: listTestGridSessions, resultKey: \ListTestGridSessionsResult.testGridSessions, tokenKey: \ListTestGridSessionsResult.nextToken)
    }
    
    ///  Gets information about tests in a given test suite.
    public func listTestsPaginator(_ input: ListTestsRequest) -> EventLoopFuture<[Test]> {
        return client.paginate(input: input, command: listTests, resultKey: \ListTestsResult.tests, tokenKey: \ListTestsResult.nextToken)
    }
    
    ///  Gets information about uploads, given an AWS Device Farm project ARN.
    public func listUploadsPaginator(_ input: ListUploadsRequest) -> EventLoopFuture<[Upload]> {
        return client.paginate(input: input, command: listUploads, resultKey: \ListUploadsResult.uploads, tokenKey: \ListUploadsResult.nextToken)
    }
    
}

extension DeviceFarm.ListArtifactsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListArtifactsRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token, 
            type: original.type
        )
    }
}

extension DeviceFarm.ListDevicePoolsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListDevicePoolsRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token, 
            type: original.type
        )
    }
}

extension DeviceFarm.ListDevicesRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListDevicesRequest, token: String) {
        self.init(
            arn: original.arn, 
            filters: original.filters, 
            nextToken: token
        )
    }
}

extension DeviceFarm.ListJobsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListJobsRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token
        )
    }
}

extension DeviceFarm.ListOfferingTransactionsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListOfferingTransactionsRequest, token: String) {
        self.init(
            nextToken: token
        )
    }
}

extension DeviceFarm.ListOfferingsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListOfferingsRequest, token: String) {
        self.init(
            nextToken: token
        )
    }
}

extension DeviceFarm.ListProjectsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListProjectsRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token
        )
    }
}

extension DeviceFarm.ListRunsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListRunsRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token
        )
    }
}

extension DeviceFarm.ListSamplesRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListSamplesRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token
        )
    }
}

extension DeviceFarm.ListSuitesRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListSuitesRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token
        )
    }
}

extension DeviceFarm.ListTestGridProjectsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListTestGridProjectsRequest, token: String) {
        self.init(
            maxResult: original.maxResult, 
            nextToken: token
        )
    }
}

extension DeviceFarm.ListTestGridSessionActionsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListTestGridSessionActionsRequest, token: String) {
        self.init(
            maxResult: original.maxResult, 
            nextToken: token, 
            sessionArn: original.sessionArn
        )
    }
}

extension DeviceFarm.ListTestGridSessionArtifactsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListTestGridSessionArtifactsRequest, token: String) {
        self.init(
            maxResult: original.maxResult, 
            nextToken: token, 
            sessionArn: original.sessionArn, 
            type: original.type
        )
    }
}

extension DeviceFarm.ListTestGridSessionsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListTestGridSessionsRequest, token: String) {
        self.init(
            creationTimeAfter: original.creationTimeAfter, 
            creationTimeBefore: original.creationTimeBefore, 
            endTimeAfter: original.endTimeAfter, 
            endTimeBefore: original.endTimeBefore, 
            maxResult: original.maxResult, 
            nextToken: token, 
            projectArn: original.projectArn, 
            status: original.status
        )
    }
}

extension DeviceFarm.ListTestsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListTestsRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token
        )
    }
}

extension DeviceFarm.ListUploadsRequest: AWSPaginateStringToken {
    public init(_ original: DeviceFarm.ListUploadsRequest, token: String) {
        self.init(
            arn: original.arn, 
            nextToken: token, 
            type: original.type
        )
    }
}


