// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension Imagebuilder {

    ///   Returns the list of component build versions for the specified semantic version. 
    public func listComponentBuildVersionsPaginator(_ input: ListComponentBuildVersionsRequest) -> EventLoopFuture<[ComponentSummary]> {
        return client.paginate(input: input, command: listComponentBuildVersions, resultKey: \ListComponentBuildVersionsResponse.componentSummaryList, tokenKey: \ListComponentBuildVersionsResponse.nextToken)
    }
    
    ///   Returns the list of component build versions for the specified semantic version. 
    public func listComponentsPaginator(_ input: ListComponentsRequest) -> EventLoopFuture<[ComponentVersion]> {
        return client.paginate(input: input, command: listComponents, resultKey: \ListComponentsResponse.componentVersionList, tokenKey: \ListComponentsResponse.nextToken)
    }
    
    ///   Returns a list of distribution configurations. 
    public func listDistributionConfigurationsPaginator(_ input: ListDistributionConfigurationsRequest) -> EventLoopFuture<[DistributionConfigurationSummary]> {
        return client.paginate(input: input, command: listDistributionConfigurations, resultKey: \ListDistributionConfigurationsResponse.distributionConfigurationSummaryList, tokenKey: \ListDistributionConfigurationsResponse.nextToken)
    }
    
    ///   Returns a list of distribution configurations. 
    public func listImageBuildVersionsPaginator(_ input: ListImageBuildVersionsRequest) -> EventLoopFuture<[ImageSummary]> {
        return client.paginate(input: input, command: listImageBuildVersions, resultKey: \ListImageBuildVersionsResponse.imageSummaryList, tokenKey: \ListImageBuildVersionsResponse.nextToken)
    }
    
    ///   Returns a list of images created by the specified pipeline. 
    public func listImagePipelineImagesPaginator(_ input: ListImagePipelineImagesRequest) -> EventLoopFuture<[ImageSummary]> {
        return client.paginate(input: input, command: listImagePipelineImages, resultKey: \ListImagePipelineImagesResponse.imageSummaryList, tokenKey: \ListImagePipelineImagesResponse.nextToken)
    }
    
    ///  Returns a list of image pipelines. 
    public func listImagePipelinesPaginator(_ input: ListImagePipelinesRequest) -> EventLoopFuture<[ImagePipeline]> {
        return client.paginate(input: input, command: listImagePipelines, resultKey: \ListImagePipelinesResponse.imagePipelineList, tokenKey: \ListImagePipelinesResponse.nextToken)
    }
    
    ///   Returns a list of image recipes. 
    public func listImageRecipesPaginator(_ input: ListImageRecipesRequest) -> EventLoopFuture<[ImageRecipeSummary]> {
        return client.paginate(input: input, command: listImageRecipes, resultKey: \ListImageRecipesResponse.imageRecipeSummaryList, tokenKey: \ListImageRecipesResponse.nextToken)
    }
    
    ///   Returns the list of image build versions for the specified semantic version. 
    public func listImagesPaginator(_ input: ListImagesRequest) -> EventLoopFuture<[ImageVersion]> {
        return client.paginate(input: input, command: listImages, resultKey: \ListImagesResponse.imageVersionList, tokenKey: \ListImagesResponse.nextToken)
    }
    
    ///   Returns a list of infrastructure configurations. 
    public func listInfrastructureConfigurationsPaginator(_ input: ListInfrastructureConfigurationsRequest) -> EventLoopFuture<[InfrastructureConfigurationSummary]> {
        return client.paginate(input: input, command: listInfrastructureConfigurations, resultKey: \ListInfrastructureConfigurationsResponse.infrastructureConfigurationSummaryList, tokenKey: \ListInfrastructureConfigurationsResponse.nextToken)
    }
    
}

extension Imagebuilder.ListComponentBuildVersionsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListComponentBuildVersionsRequest, token: String) {
        self.init(
            componentVersionArn: original.componentVersionArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListComponentsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListComponentsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            owner: original.owner
        )
    }
}

extension Imagebuilder.ListDistributionConfigurationsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListDistributionConfigurationsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImageBuildVersionsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImageBuildVersionsRequest, token: String) {
        self.init(
            filters: original.filters, 
            imageVersionArn: original.imageVersionArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImagePipelineImagesRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImagePipelineImagesRequest, token: String) {
        self.init(
            filters: original.filters, 
            imagePipelineArn: original.imagePipelineArn, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImagePipelinesRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImagePipelinesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension Imagebuilder.ListImageRecipesRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImageRecipesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            owner: original.owner
        )
    }
}

extension Imagebuilder.ListImagesRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListImagesRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token, 
            owner: original.owner
        )
    }
}

extension Imagebuilder.ListInfrastructureConfigurationsRequest: AWSPaginateStringToken {
    public init(_ original: Imagebuilder.ListInfrastructureConfigurationsRequest, token: String) {
        self.init(
            filters: original.filters, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}


