// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension GuardDuty {

    ///  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    public func listDetectorsPaginator(_ input: ListDetectorsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listDetectors, resultKey: \ListDetectorsResponse.detectorIds, tokenKey: \ListDetectorsResponse.nextToken)
    }
    
    ///  Returns a paginated list of the current filters.
    public func listFiltersPaginator(_ input: ListFiltersRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listFilters, resultKey: \ListFiltersResponse.filterNames, tokenKey: \ListFiltersResponse.nextToken)
    }
    
    ///  Lists Amazon GuardDuty findings for the specified detector ID.
    public func listFindingsPaginator(_ input: ListFindingsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listFindings, resultKey: \ListFindingsResponse.findingIds, tokenKey: \ListFindingsResponse.nextToken)
    }
    
    ///  Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.
    public func listIPSetsPaginator(_ input: ListIPSetsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listIPSets, resultKey: \ListIPSetsResponse.ipSetIds, tokenKey: \ListIPSetsResponse.nextToken)
    }
    
    ///  Lists all GuardDuty membership invitations that were sent to the current AWS account.
    public func listInvitationsPaginator(_ input: ListInvitationsRequest) -> EventLoopFuture<[Invitation]> {
        return client.paginate(input: input, command: listInvitations, resultKey: \ListInvitationsResponse.invitations, tokenKey: \ListInvitationsResponse.nextToken)
    }
    
    ///  Lists details about all member accounts for the current GuardDuty master account.
    public func listMembersPaginator(_ input: ListMembersRequest) -> EventLoopFuture<[Member]> {
        return client.paginate(input: input, command: listMembers, resultKey: \ListMembersResponse.members, tokenKey: \ListMembersResponse.nextToken)
    }
    
    ///  Returns a list of publishing destinations associated with the specified dectectorId.
    public func listPublishingDestinationsPaginator(_ input: ListPublishingDestinationsRequest) -> EventLoopFuture<[Destination]> {
        return client.paginate(input: input, command: listPublishingDestinations, resultKey: \ListPublishingDestinationsResponse.destinations, tokenKey: \ListPublishingDestinationsResponse.nextToken)
    }
    
    ///  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.
    public func listThreatIntelSetsPaginator(_ input: ListThreatIntelSetsRequest) -> EventLoopFuture<[String]> {
        return client.paginate(input: input, command: listThreatIntelSets, resultKey: \ListThreatIntelSetsResponse.threatIntelSetIds, tokenKey: \ListThreatIntelSetsResponse.nextToken)
    }
    
}

extension GuardDuty.ListDetectorsRequest: AWSPaginateStringToken {
    public init(_ original: GuardDuty.ListDetectorsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListFiltersRequest: AWSPaginateStringToken {
    public init(_ original: GuardDuty.ListFiltersRequest, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListFindingsRequest: AWSPaginateStringToken {
    public init(_ original: GuardDuty.ListFindingsRequest, token: String) {
        self.init(
            detectorId: original.detectorId, 
            findingCriteria: original.findingCriteria, 
            maxResults: original.maxResults, 
            nextToken: token, 
            sortCriteria: original.sortCriteria
        )
    }
}

extension GuardDuty.ListIPSetsRequest: AWSPaginateStringToken {
    public init(_ original: GuardDuty.ListIPSetsRequest, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListInvitationsRequest: AWSPaginateStringToken {
    public init(_ original: GuardDuty.ListInvitationsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListMembersRequest: AWSPaginateStringToken {
    public init(_ original: GuardDuty.ListMembersRequest, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            onlyAssociated: original.onlyAssociated
        )
    }
}

extension GuardDuty.ListPublishingDestinationsRequest: AWSPaginateStringToken {
    public init(_ original: GuardDuty.ListPublishingDestinationsRequest, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GuardDuty.ListThreatIntelSetsRequest: AWSPaginateStringToken {
    public init(_ original: GuardDuty.ListThreatIntelSetsRequest, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


