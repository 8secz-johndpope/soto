// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension AppStream {

    ///  Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. 
    public func describeImagePermissionsPaginator(_ input: DescribeImagePermissionsRequest) -> EventLoopFuture<[SharedImagePermissions]> {
        return client.paginate(input: input, command: describeImagePermissions, resultKey: \DescribeImagePermissionsResult.sharedImagePermissionsList, tokenKey: \DescribeImagePermissionsResult.nextToken)
    }
    
    ///  Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
    public func describeImagesPaginator(_ input: DescribeImagesRequest) -> EventLoopFuture<[Image]> {
        return client.paginate(input: input, command: describeImages, resultKey: \DescribeImagesResult.images, tokenKey: \DescribeImagesResult.nextToken)
    }
    
}

extension AppStream.DescribeImagePermissionsRequest: AWSPaginateStringToken {
    public init(_ original: AppStream.DescribeImagePermissionsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token, 
            sharedAwsAccountIds: original.sharedAwsAccountIds
        )
    }
}

extension AppStream.DescribeImagesRequest: AWSPaginateStringToken {
    public init(_ original: AppStream.DescribeImagesRequest, token: String) {
        self.init(
            arns: original.arns, 
            maxResults: original.maxResults, 
            names: original.names, 
            nextToken: token, 
            type: original.type
        )
    }
}


