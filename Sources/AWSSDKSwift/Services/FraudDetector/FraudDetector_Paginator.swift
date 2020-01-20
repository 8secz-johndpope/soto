// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

extension FraudDetector {

    ///  Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. 
    public func describeModelVersionsPaginator(_ input: DescribeModelVersionsRequest) -> EventLoopFuture<[ModelVersionDetail]> {
        return client.paginate(input: input, command: describeModelVersions, resultKey: \DescribeModelVersionsResult.modelVersionDetails, tokenKey: \DescribeModelVersionsResult.nextToken)
    }
    
    ///  Gets all of detectors. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetEventTypesResponse as part of your request. A null pagination token fetches the records from the beginning. 
    public func getDetectorsPaginator(_ input: GetDetectorsRequest) -> EventLoopFuture<[Detector]> {
        return client.paginate(input: input, command: getDetectors, resultKey: \GetDetectorsResult.detectors, tokenKey: \GetDetectorsResult.nextToken)
    }
    
    ///  Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 5 and 10. To get the next page results, provide the pagination token from the GetExternalModelsResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getExternalModelsPaginator(_ input: GetExternalModelsRequest) -> EventLoopFuture<[ExternalModel]> {
        return client.paginate(input: input, command: getExternalModels, resultKey: \GetExternalModelsResult.externalModels, tokenKey: \GetExternalModelsResult.nextToken)
    }
    
    ///  Gets all of the models for the AWS account, or the specified model type, or gets a single model for the specified model type, model ID combination. 
    public func getModelsPaginator(_ input: GetModelsRequest) -> EventLoopFuture<[Model]> {
        return client.paginate(input: input, command: getModels, resultKey: \GetModelsResult.models, tokenKey: \GetModelsResult.nextToken)
    }
    
    ///  Gets one or more outcomes. This is a paginated API. If you provide a null maxSizePerPage, this actions retrieves a maximum of 10 records per page. If you provide a maxSizePerPage, the value must be between 50 and 100. To get the next page results, provide the pagination token from the GetOutcomesResult as part of your request. A null pagination token fetches the records from the beginning. 
    public func getOutcomesPaginator(_ input: GetOutcomesRequest) -> EventLoopFuture<[Outcome]> {
        return client.paginate(input: input, command: getOutcomes, resultKey: \GetOutcomesResult.outcomes, tokenKey: \GetOutcomesResult.nextToken)
    }
    
    ///  Gets all rules available for the specified detector.
    public func getRulesPaginator(_ input: GetRulesRequest) -> EventLoopFuture<[RuleDetail]> {
        return client.paginate(input: input, command: getRules, resultKey: \GetRulesResult.ruleDetails, tokenKey: \GetRulesResult.nextToken)
    }
    
    ///  Gets all of the variables or the specific variable. This is a paginated API. Providing null maxSizePerPage results in retrieving maximum of 100 records per page. If you provide maxSizePerPage the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetVariablesResult as part of your request. Null pagination token fetches the records from the beginning. 
    public func getVariablesPaginator(_ input: GetVariablesRequest) -> EventLoopFuture<[Variable]> {
        return client.paginate(input: input, command: getVariables, resultKey: \GetVariablesResult.variables, tokenKey: \GetVariablesResult.nextToken)
    }
    
}

extension FraudDetector.DescribeModelVersionsRequest: AWSPaginateStringToken {
    public init(_ original: FraudDetector.DescribeModelVersionsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            modelId: original.modelId, 
            modelType: original.modelType, 
            modelVersionNumber: original.modelVersionNumber, 
            nextToken: token
        )
    }
}

extension FraudDetector.GetDetectorsRequest: AWSPaginateStringToken {
    public init(_ original: FraudDetector.GetDetectorsRequest, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token
        )
    }
}

extension FraudDetector.GetExternalModelsRequest: AWSPaginateStringToken {
    public init(_ original: FraudDetector.GetExternalModelsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            modelEndpoint: original.modelEndpoint, 
            nextToken: token
        )
    }
}

extension FraudDetector.GetModelsRequest: AWSPaginateStringToken {
    public init(_ original: FraudDetector.GetModelsRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            modelId: original.modelId, 
            modelType: original.modelType, 
            nextToken: token
        )
    }
}

extension FraudDetector.GetOutcomesRequest: AWSPaginateStringToken {
    public init(_ original: FraudDetector.GetOutcomesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token
        )
    }
}

extension FraudDetector.GetRulesRequest: AWSPaginateStringToken {
    public init(_ original: FraudDetector.GetRulesRequest, token: String) {
        self.init(
            detectorId: original.detectorId, 
            maxResults: original.maxResults, 
            nextToken: token, 
            ruleId: original.ruleId, 
            ruleVersion: original.ruleVersion
        )
    }
}

extension FraudDetector.GetVariablesRequest: AWSPaginateStringToken {
    public init(_ original: FraudDetector.GetVariablesRequest, token: String) {
        self.init(
            maxResults: original.maxResults, 
            name: original.name, 
            nextToken: token
        )
    }
}


