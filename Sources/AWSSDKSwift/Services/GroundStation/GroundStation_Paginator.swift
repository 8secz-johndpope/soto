// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension GroundStation {

    ///  Returns a list of Config objects.
    public func listConfigsPaginator(_ input: ListConfigsRequest) -> EventLoopFuture<[ConfigListItem]> {
        return client.paginate(input: input, command: listConfigs, resultKey: \ListConfigsResponse.configList, tokenKey: \ListConfigsResponse.nextToken)
    }
    
    ///  Returns a list of contacts.
    ///           If statusList contains AVAILABLE, the request must include
    ///        groundstation, missionprofileArn, and satelliteArn.
    ///        
    public func listContactsPaginator(_ input: ListContactsRequest) -> EventLoopFuture<[ContactData]> {
        return client.paginate(input: input, command: listContacts, resultKey: \ListContactsResponse.contactList, tokenKey: \ListContactsResponse.nextToken)
    }
    
    ///  Returns a list of DataflowEndpoint groups.
    public func listDataflowEndpointGroupsPaginator(_ input: ListDataflowEndpointGroupsRequest) -> EventLoopFuture<[DataflowEndpointListItem]> {
        return client.paginate(input: input, command: listDataflowEndpointGroups, resultKey: \ListDataflowEndpointGroupsResponse.dataflowEndpointGroupList, tokenKey: \ListDataflowEndpointGroupsResponse.nextToken)
    }
    
    ///  Returns a list of ground stations. 
    public func listGroundStationsPaginator(_ input: ListGroundStationsRequest) -> EventLoopFuture<[GroundStationData]> {
        return client.paginate(input: input, command: listGroundStations, resultKey: \ListGroundStationsResponse.groundStationList, tokenKey: \ListGroundStationsResponse.nextToken)
    }
    
    ///  Returns a list of mission profiles.
    public func listMissionProfilesPaginator(_ input: ListMissionProfilesRequest) -> EventLoopFuture<[MissionProfileListItem]> {
        return client.paginate(input: input, command: listMissionProfiles, resultKey: \ListMissionProfilesResponse.missionProfileList, tokenKey: \ListMissionProfilesResponse.nextToken)
    }
    
    ///  Returns a list of satellites.
    public func listSatellitesPaginator(_ input: ListSatellitesRequest) -> EventLoopFuture<[SatelliteListItem]> {
        return client.paginate(input: input, command: listSatellites, resultKey: \ListSatellitesResponse.satellites, tokenKey: \ListSatellitesResponse.nextToken)
    }
    
}

extension GroundStation.ListConfigsRequest: AWSPaginateStringToken {
    public init(_ original: GroundStation.ListConfigsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GroundStation.ListContactsRequest: AWSPaginateStringToken {
    public init(_ original: GroundStation.ListContactsRequest, token: String) {
        self.init(
            endTime: original.endTime, 
            groundStation: original.groundStation, 
            maxResults: original.maxResults, 
            missionProfileArn: original.missionProfileArn, 
            nextToken: token, 
            satelliteArn: original.satelliteArn, 
            startTime: original.startTime, 
            statusList: original.statusList
        )
    }
}

extension GroundStation.ListDataflowEndpointGroupsRequest: AWSPaginateStringToken {
    public init(_ original: GroundStation.ListDataflowEndpointGroupsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GroundStation.ListGroundStationsRequest: AWSPaginateStringToken {
    public init(_ original: GroundStation.ListGroundStationsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GroundStation.ListMissionProfilesRequest: AWSPaginateStringToken {
    public init(_ original: GroundStation.ListMissionProfilesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension GroundStation.ListSatellitesRequest: AWSPaginateStringToken {
    public init(_ original: GroundStation.ListSatellitesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


