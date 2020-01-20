// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension StorageGateway {

    ///  Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This operation is only supported in the tape gateway type. If a specific TapeARN is not specified, AWS Storage Gateway returns a description of all virtual tapes found in the VTS associated with your account.
    public func describeTapeArchivesPaginator(_ input: DescribeTapeArchivesInput) -> EventLoopFuture<[TapeArchive]> {
        return client.paginate(input: input, command: describeTapeArchives, resultKey: \DescribeTapeArchivesOutput.tapeArchives, tokenKey: \DescribeTapeArchivesOutput.marker)
    }
    
    ///  Returns a list of virtual tape recovery points that are available for the specified tape gateway. A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway. This operation is only supported in the tape gateway type.
    public func describeTapeRecoveryPointsPaginator(_ input: DescribeTapeRecoveryPointsInput) -> EventLoopFuture<[TapeRecoveryPointInfo]> {
        return client.paginate(input: input, command: describeTapeRecoveryPoints, resultKey: \DescribeTapeRecoveryPointsOutput.tapeRecoveryPointInfos, tokenKey: \DescribeTapeRecoveryPointsOutput.marker)
    }
    
    ///  Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a TapeARN is not specified, returns a description of all virtual tapes associated with the specified gateway. This operation is only supported in the tape gateway type.
    public func describeTapesPaginator(_ input: DescribeTapesInput) -> EventLoopFuture<[Tape]> {
        return client.paginate(input: input, command: describeTapes, resultKey: \DescribeTapesOutput.tapes, tokenKey: \DescribeTapesOutput.marker)
    }
    
    ///  Returns a description of virtual tape library (VTL) devices for the specified tape gateway. In the response, AWS Storage Gateway returns VTL device information. This operation is only supported in the tape gateway type.
    public func describeVTLDevicesPaginator(_ input: DescribeVTLDevicesInput) -> EventLoopFuture<[VTLDevice]> {
        return client.paginate(input: input, command: describeVTLDevices, resultKey: \DescribeVTLDevicesOutput.vTLDevices, tokenKey: \DescribeVTLDevicesOutput.marker)
    }
    
    ///  Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account. This operation is only supported for file gateways.
    public func listFileSharesPaginator(_ input: ListFileSharesInput) -> EventLoopFuture<[FileShareInfo]> {
        return client.paginate(input: input, command: listFileShares, resultKey: \ListFileSharesOutput.fileShareInfoList, tokenKey: \ListFileSharesOutput.nextMarker)
    }
    
    ///  Lists gateways owned by an AWS account in an AWS Region specified in the request. The returned list is ordered by gateway Amazon Resource Name (ARN). By default, the operation returns a maximum of 100 gateways. This operation supports pagination that allows you to optionally reduce the number of gateways returned in a response. If you have more gateways than are returned in a response (that is, the response returns only a truncated list of your gateways), the response contains a marker that you can specify in your next request to fetch the next page of gateways.
    public func listGatewaysPaginator(_ input: ListGatewaysInput) -> EventLoopFuture<[GatewayInfo]> {
        return client.paginate(input: input, command: listGateways, resultKey: \ListGatewaysOutput.gateways, tokenKey: \ListGatewaysOutput.marker)
    }
    
    ///  Lists the tags that have been added to the specified resource. This operation is supported in storage gateways of all types.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceInput) -> EventLoopFuture<[Tag]> {
        return client.paginate(input: input, command: listTagsForResource, resultKey: \ListTagsForResourceOutput.tags, tokenKey: \ListTagsForResourceOutput.marker)
    }
    
    ///  Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both your VTL and VTS. This operation supports pagination. By default, the operation returns a maximum of up to 100 tapes. You can optionally specify the Limit parameter in the body to limit the number of tapes in the response. If the number of tapes returned in the response is truncated, the response includes a Marker element that you can use in your subsequent request to retrieve the next set of tapes. This operation is only supported in the tape gateway type.
    public func listTapesPaginator(_ input: ListTapesInput) -> EventLoopFuture<[TapeInfo]> {
        return client.paginate(input: input, command: listTapes, resultKey: \ListTapesOutput.tapeInfos, tokenKey: \ListTapesOutput.marker)
    }
    
    ///  Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The response includes only the volume ARNs. If you want additional volume information, use the DescribeStorediSCSIVolumes or the DescribeCachediSCSIVolumes API. The operation supports pagination. By default, the operation returns a maximum of up to 100 volumes. You can optionally specify the Limit field in the body to limit the number of volumes in the response. If the number of volumes returned in the response is truncated, the response includes a Marker field. You can use this Marker value in your subsequent request to retrieve the next set of volumes. This operation is only supported in the cached volume and stored volume gateway types.
    public func listVolumesPaginator(_ input: ListVolumesInput) -> EventLoopFuture<[VolumeInfo]> {
        return client.paginate(input: input, command: listVolumes, resultKey: \ListVolumesOutput.volumeInfos, tokenKey: \ListVolumesOutput.marker)
    }
    
}

extension StorageGateway.DescribeTapeArchivesInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.DescribeTapeArchivesInput, token: String) {
        self.init(
            limit: original.limit, 
            marker: token, 
            tapeARNs: original.tapeARNs
        )
    }
}

extension StorageGateway.DescribeTapeRecoveryPointsInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.DescribeTapeRecoveryPointsInput, token: String) {
        self.init(
            gatewayARN: original.gatewayARN, 
            limit: original.limit, 
            marker: token
        )
    }
}

extension StorageGateway.DescribeTapesInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.DescribeTapesInput, token: String) {
        self.init(
            gatewayARN: original.gatewayARN, 
            limit: original.limit, 
            marker: token, 
            tapeARNs: original.tapeARNs
        )
    }
}

extension StorageGateway.DescribeVTLDevicesInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.DescribeVTLDevicesInput, token: String) {
        self.init(
            gatewayARN: original.gatewayARN, 
            limit: original.limit, 
            marker: token, 
            vTLDeviceARNs: original.vTLDeviceARNs
        )
    }
}

extension StorageGateway.ListFileSharesInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.ListFileSharesInput, token: String) {
        self.init(
            gatewayARN: original.gatewayARN, 
            limit: original.limit, 
            marker: token
        )
    }
}

extension StorageGateway.ListGatewaysInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.ListGatewaysInput, token: String) {
        self.init(
            limit: original.limit, 
            marker: token
        )
    }
}

extension StorageGateway.ListTagsForResourceInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.ListTagsForResourceInput, token: String) {
        self.init(
            limit: original.limit, 
            marker: token, 
            resourceARN: original.resourceARN
        )
    }
}

extension StorageGateway.ListTapesInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.ListTapesInput, token: String) {
        self.init(
            limit: original.limit, 
            marker: token, 
            tapeARNs: original.tapeARNs
        )
    }
}

extension StorageGateway.ListVolumesInput: AWSPaginateStringToken {
    public init(_ original: StorageGateway.ListVolumesInput, token: String) {
        self.init(
            gatewayARN: original.gatewayARN, 
            limit: original.limit, 
            marker: token
        )
    }
}


