// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Route53 {

    ///  Retrieve a list of the health checks that are associated with the current AWS account. 
    public func listHealthChecksPaginator(_ input: ListHealthChecksRequest) -> EventLoopFuture<[HealthCheck]> {
        return client.paginate(input: input, command: listHealthChecks, resultKey: \ListHealthChecksResponse.healthChecks, tokenKey: \ListHealthChecksResponse.nextMarker)
    }
    
    ///  Retrieves a list of the public and private hosted zones that are associated with the current AWS account. The response includes a HostedZones child element for each hosted zone. Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the maxitems parameter to list them in groups of up to 100.
    public func listHostedZonesPaginator(_ input: ListHostedZonesRequest) -> EventLoopFuture<[HostedZone]> {
        return client.paginate(input: input, command: listHostedZones, resultKey: \ListHostedZonesResponse.hostedZones, tokenKey: \ListHostedZonesResponse.nextMarker)
    }
    
    ///  Lists the resource record sets in a specified hosted zone.  ListResourceRecordSets returns up to 100 resource record sets at a time in ASCII order, beginning at a position specified by the name and type elements.  Sort order   ListResourceRecordSets sorts results first by DNS name with the labels reversed, for example:  com.example.www.  Note the trailing dot, which can change the sort order when the record name contains characters that appear before . (decimal 46) in the ASCII table. These characters include the following: ! " # $ % &amp; ' ( ) * + , -  When multiple records have the same DNS name, ListResourceRecordSets sorts results by the record type.  Specifying where to start listing records  You can use the name and type elements to specify the resource record set that the list begins with:  If you do not specify Name or Type  The results begin with the first resource record set that the hosted zone contains.  If you specify Name but not Type  The results begin with the first resource record set in the list whose name is greater than or equal to Name.  If you specify Type but not Name  Amazon Route 53 returns the InvalidInput error.  If you specify both Name and Type  The results begin with the first resource record set in the list whose name is greater than or equal to Name, and whose type is greater than or equal to Type.    Resource record sets that are PENDING  This action returns the most current version of the records. This includes records that are PENDING, and that are not yet available on all Route 53 DNS servers.  Changing resource record sets  To ensure that you get an accurate listing of the resource record sets for a hosted zone at a point in time, do not submit a ChangeResourceRecordSets request while you're paging through the results of a ListResourceRecordSets request. If you do, some pages may display results without the latest changes while other pages display results with the latest changes.  Displaying the next page of results  If a ListResourceRecordSets command returns more than one page of results, the value of IsTruncated is true. To display the next page of results, get the values of NextRecordName, NextRecordType, and NextRecordIdentifier (if any) from the response. Then submit another ListResourceRecordSets request, and specify those values for StartRecordName, StartRecordType, and StartRecordIdentifier.
    public func listResourceRecordSetsPaginator(_ input: ListResourceRecordSetsRequest) -> EventLoopFuture<[ResourceRecordSet]> {
        return client.paginate(input: input, command: listResourceRecordSets, resultKey: \ListResourceRecordSetsResponse.resourceRecordSets, tokenKey: \ListResourceRecordSetsResponse.nextRecordName)
    }
    
}

extension Route53.ListHealthChecksRequest: AWSPaginateStringToken {
    public init(_ original: Route53.ListHealthChecksRequest, token: String) {
        self.init(
            marker: token, 
            maxItems: original.maxItems
        )
    }
}

extension Route53.ListHostedZonesRequest: AWSPaginateStringToken {
    public init(_ original: Route53.ListHostedZonesRequest, token: String) {
        self.init(
            delegationSetId: original.delegationSetId, 
            marker: token, 
            maxItems: original.maxItems
        )
    }
}

extension Route53.ListResourceRecordSetsRequest: AWSPaginateStringToken {
    public init(_ original: Route53.ListResourceRecordSetsRequest, token: String) {
        self.init(
            hostedZoneId: original.hostedZoneId, 
            maxItems: original.maxItems, 
            startRecordIdentifier: original.startRecordIdentifier, 
            startRecordName: token, 
            startRecordType: original.startRecordType
        )
    }
}


