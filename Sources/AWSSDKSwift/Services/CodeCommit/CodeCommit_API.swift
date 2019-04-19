// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
AWS CodeCommit This is the AWS CodeCommit API Reference. This reference provides descriptions of the operations and data types for AWS CodeCommit API along with usage examples. You can use the AWS CodeCommit API to work with the following objects: Repositories, by calling the following:    BatchGetRepositories, which returns information about one or more repositories associated with your AWS account.    CreateRepository, which creates an AWS CodeCommit repository.    DeleteRepository, which deletes an AWS CodeCommit repository.    GetRepository, which returns information about a specified repository.    ListRepositories, which lists all AWS CodeCommit repositories associated with your AWS account.    UpdateRepositoryDescription, which sets or updates the description of the repository.    UpdateRepositoryName, which changes the name of the repository. If you change the name of a repository, no other users of that repository will be able to access it until you send them the new HTTPS or SSH URL to use.   Branches, by calling the following:    CreateBranch, which creates a new branch in a specified repository.    DeleteBranch, which deletes the specified branch in a repository unless it is the default branch.    GetBranch, which returns information about a specified branch.    ListBranches, which lists all branches for a specified repository.    UpdateDefaultBranch, which changes the default branch for a repository.   Files, by calling the following:    DeleteFile, which deletes the content of a specified file from a specified branch.    GetFile, which returns the base-64 encoded content of a specified file.    GetFolder, which returns the contents of a specified folder or directory.    PutFile, which adds or modifies a file in a specified repository and branch.   Information about committed code in a repository, by calling the following:    GetBlob, which returns the base-64 encoded content of an individual Git blob object within a repository.    GetCommit, which returns information about a commit, including commit messages and author and committer information.    GetDifferences, which returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference).   Pull requests, by calling the following:    CreatePullRequest, which creates a pull request in a specified repository.    DescribePullRequestEvents, which returns information about one or more pull request events.    GetCommentsForPullRequest, which returns information about comments on a specified pull request.    GetMergeConflicts, which returns information about merge conflicts between the source and destination branch in a pull request.    GetPullRequest, which returns information about a specified pull request.    ListPullRequests, which lists all pull requests for a repository.    MergePullRequestByFastForward, which merges the source destination branch of a pull request into the specified destination branch for that pull request using the fast-forward merge option.    PostCommentForPullRequest, which posts a comment to a pull request at the specified line, file, or request.    UpdatePullRequestDescription, which updates the description of a pull request.    UpdatePullRequestStatus, which updates the status of a pull request.    UpdatePullRequestTitle, which updates the title of a pull request.   Information about comments in a repository, by calling the following:    DeleteCommentContent, which deletes the content of a comment on a commit in a repository.    GetComment, which returns information about a comment on a commit.    GetCommentsForComparedCommit, which returns information about comments on the comparison between two commit specifiers in a repository.    PostCommentForComparedCommit, which creates a comment on the comparison between two commit specifiers in a repository.    PostCommentReply, which creates a reply to a comment.    UpdateComment, which updates the content of a comment on a commit in a repository.   Triggers, by calling the following:    GetRepositoryTriggers, which returns information about triggers configured for a repository.    PutRepositoryTriggers, which replaces all triggers for a repository and can be used to create or delete triggers.    TestRepositoryTriggers, which tests the functionality of a repository trigger by sending data to the trigger target.   For information about how to use AWS CodeCommit, see the AWS CodeCommit User Guide.
*/
public struct CodeCommit {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "CodeCommit_20150413",
            service: "codecommit",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-04-13",
            endpoint: endpoint,
            serviceEndpoints: ["fips": "codecommit-fips.ca-central-1.amazonaws.com"],
            middlewares: [],
            possibleErrorTypes: [CodeCommitErrorType.self]
        )
    }

    ///  Returns information about one or more repositories.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page. 
    public func batchGetRepositories(_ input: BatchGetRepositoriesInput) throws -> BatchGetRepositoriesOutput {
        return try client.send(operation: "BatchGetRepositories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new branch in a repository and points the branch to a commit.  Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation. 
    public func createBranch(_ input: CreateBranchInput) throws {
        _ = try client.send(operation: "CreateBranch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a pull request in the specified repository.
    public func createPullRequest(_ input: CreatePullRequestInput) throws -> CreatePullRequestOutput {
        return try client.send(operation: "CreatePullRequest", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new, empty repository.
    public func createRepository(_ input: CreateRepositoryInput) throws -> CreateRepositoryOutput {
        return try client.send(operation: "CreateRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a branch from a repository, unless that branch is the default branch for the repository. 
    public func deleteBranch(_ input: DeleteBranchInput) throws -> DeleteBranchOutput {
        return try client.send(operation: "DeleteBranch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the content of a comment made on a change, file, or commit in a repository.
    public func deleteCommentContent(_ input: DeleteCommentContentInput) throws -> DeleteCommentContentOutput {
        return try client.send(operation: "DeleteCommentContent", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified file from a specified branch. A commit is created on the branch that contains the revision. The file will still exist in the commits prior to the commit that contains the deletion.
    public func deleteFile(_ input: DeleteFileInput) throws -> DeleteFileOutput {
        return try client.send(operation: "DeleteFile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a repository. If a specified repository was already deleted, a null repository ID will be returned.  Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository will fail. 
    public func deleteRepository(_ input: DeleteRepositoryInput) throws -> DeleteRepositoryOutput {
        return try client.send(operation: "DeleteRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about one or more pull request events.
    public func describePullRequestEvents(_ input: DescribePullRequestEventsInput) throws -> DescribePullRequestEventsOutput {
        return try client.send(operation: "DescribePullRequestEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the base-64 encoded content of an individual blob within a repository.
    public func getBlob(_ input: GetBlobInput) throws -> GetBlobOutput {
        return try client.send(operation: "GetBlob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a repository branch, including its name and the last commit ID.
    public func getBranch(_ input: GetBranchInput) throws -> GetBranchOutput {
        return try client.send(operation: "GetBranch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the content of a comment made on a change, file, or commit in a repository.
    public func getComment(_ input: GetCommentInput) throws -> GetCommentOutput {
        return try client.send(operation: "GetComment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about comments made on the comparison between two commits.
    public func getCommentsForComparedCommit(_ input: GetCommentsForComparedCommitInput) throws -> GetCommentsForComparedCommitOutput {
        return try client.send(operation: "GetCommentsForComparedCommit", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns comments made on a pull request.
    public func getCommentsForPullRequest(_ input: GetCommentsForPullRequestInput) throws -> GetCommentsForPullRequestOutput {
        return try client.send(operation: "GetCommentsForPullRequest", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a commit, including commit message and committer information.
    public func getCommit(_ input: GetCommitInput) throws -> GetCommitOutput {
        return try client.send(operation: "GetCommit", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference). Results can be limited to a specified path.
    public func getDifferences(_ input: GetDifferencesInput) throws -> GetDifferencesOutput {
        return try client.send(operation: "GetDifferences", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the base-64 encoded contents of a specified file and its metadata.
    public func getFile(_ input: GetFileInput) throws -> GetFileOutput {
        return try client.send(operation: "GetFile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the contents of a specified folder in a repository.
    public func getFolder(_ input: GetFolderInput) throws -> GetFolderOutput {
        return try client.send(operation: "GetFolder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.
    public func getMergeConflicts(_ input: GetMergeConflictsInput) throws -> GetMergeConflictsOutput {
        return try client.send(operation: "GetMergeConflicts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a pull request in a specified repository.
    public func getPullRequest(_ input: GetPullRequestInput) throws -> GetPullRequestOutput {
        return try client.send(operation: "GetPullRequest", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page. 
    public func getRepository(_ input: GetRepositoryInput) throws -> GetRepositoryOutput {
        return try client.send(operation: "GetRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about triggers configured for a repository.
    public func getRepositoryTriggers(_ input: GetRepositoryTriggersInput) throws -> GetRepositoryTriggersOutput {
        return try client.send(operation: "GetRepositoryTriggers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more branches in a repository.
    public func listBranches(_ input: ListBranchesInput) throws -> ListBranchesOutput {
        return try client.send(operation: "ListBranches", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.
    public func listPullRequests(_ input: ListPullRequestsInput) throws -> ListPullRequestsOutput {
        return try client.send(operation: "ListPullRequests", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about one or more repositories.
    public func listRepositories(_ input: ListRepositoriesInput) throws -> ListRepositoriesOutput {
        return try client.send(operation: "ListRepositories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Closes a pull request and attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge option.
    public func mergePullRequestByFastForward(_ input: MergePullRequestByFastForwardInput) throws -> MergePullRequestByFastForwardOutput {
        return try client.send(operation: "MergePullRequestByFastForward", path: "/", httpMethod: "POST", input: input)
    }

    ///  Posts a comment on the comparison between two commits.
    public func postCommentForComparedCommit(_ input: PostCommentForComparedCommitInput) throws -> PostCommentForComparedCommitOutput {
        return try client.send(operation: "PostCommentForComparedCommit", path: "/", httpMethod: "POST", input: input)
    }

    ///  Posts a comment on a pull request.
    public func postCommentForPullRequest(_ input: PostCommentForPullRequestInput) throws -> PostCommentForPullRequestOutput {
        return try client.send(operation: "PostCommentForPullRequest", path: "/", httpMethod: "POST", input: input)
    }

    ///  Posts a comment in reply to an existing comment on a comparison between commits or a pull request.
    public func postCommentReply(_ input: PostCommentReplyInput) throws -> PostCommentReplyOutput {
        return try client.send(operation: "PostCommentReply", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch.
    public func putFile(_ input: PutFileInput) throws -> PutFileOutput {
        return try client.send(operation: "PutFile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Replaces all triggers for a repository. This can be used to create or delete triggers.
    public func putRepositoryTriggers(_ input: PutRepositoryTriggersInput) throws -> PutRepositoryTriggersOutput {
        return try client.send(operation: "PutRepositoryTriggers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test will send data from the last commit. If no data is available, sample data will be generated.
    public func testRepositoryTriggers(_ input: TestRepositoryTriggersInput) throws -> TestRepositoryTriggersOutput {
        return try client.send(operation: "TestRepositoryTriggers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Replaces the contents of a comment.
    public func updateComment(_ input: UpdateCommentInput) throws -> UpdateCommentOutput {
        return try client.send(operation: "UpdateComment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets or changes the default branch name for the specified repository.  If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change. 
    public func updateDefaultBranch(_ input: UpdateDefaultBranchInput) throws {
        _ = try client.send(operation: "UpdateDefaultBranch", path: "/", httpMethod: "POST", input: input)
    }

    ///  Replaces the contents of the description of a pull request.
    public func updatePullRequestDescription(_ input: UpdatePullRequestDescriptionInput) throws -> UpdatePullRequestDescriptionOutput {
        return try client.send(operation: "UpdatePullRequestDescription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the status of a pull request. 
    public func updatePullRequestStatus(_ input: UpdatePullRequestStatusInput) throws -> UpdatePullRequestStatusOutput {
        return try client.send(operation: "UpdatePullRequestStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Replaces the title of a pull request.
    public func updatePullRequestTitle(_ input: UpdatePullRequestTitleInput) throws -> UpdatePullRequestTitleOutput {
        return try client.send(operation: "UpdatePullRequestTitle", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets or changes the comment or description for a repository.  The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page. 
    public func updateRepositoryDescription(_ input: UpdateRepositoryDescriptionInput) throws {
        _ = try client.send(operation: "UpdateRepositoryDescription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Renames a repository. The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix ".git" is prohibited. For a full description of the limits on repository names, see Limits in the AWS CodeCommit User Guide.
    public func updateRepositoryName(_ input: UpdateRepositoryNameInput) throws {
        _ = try client.send(operation: "UpdateRepositoryName", path: "/", httpMethod: "POST", input: input)
    }


}