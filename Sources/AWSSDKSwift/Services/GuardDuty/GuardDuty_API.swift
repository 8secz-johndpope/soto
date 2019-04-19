// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Assess, monitor, manage, and remediate security issues across your AWS infrastructure, applications, and data.
*/
public struct GuardDuty {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "guardduty",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-28",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [GuardDutyErrorType.self]
        )
    }

    ///  Accepts the invitation to be monitored by a master GuardDuty account.
    public func acceptInvitation(_ input: AcceptInvitationRequest) throws -> AcceptInvitationResponse {
        return try client.send(operation: "AcceptInvitation", path: "/detector/{detectorId}/master", httpMethod: "POST", input: input)
    }

    ///  Archives Amazon GuardDuty findings specified by the list of finding IDs.
    public func archiveFindings(_ input: ArchiveFindingsRequest) throws -> ArchiveFindingsResponse {
        return try client.send(operation: "ArchiveFindings", path: "/detector/{detectorId}/findings/archive", httpMethod: "POST", input: input)
    }

    ///  Creates a single Amazon GuardDuty detector. A detector is an object that represents the GuardDuty service. A detector must be created in order for GuardDuty to become operational.
    public func createDetector(_ input: CreateDetectorRequest) throws -> CreateDetectorResponse {
        return try client.send(operation: "CreateDetector", path: "/detector", httpMethod: "POST", input: input)
    }

    ///  Creates a filter using the specified finding criteria.
    public func createFilter(_ input: CreateFilterRequest) throws -> CreateFilterResponse {
        return try client.send(operation: "CreateFilter", path: "/detector/{detectorId}/filter", httpMethod: "POST", input: input)
    }

    ///  Creates a new IPSet - a list of trusted IP addresses that have been whitelisted for secure communication with AWS infrastructure and applications.
    public func createIPSet(_ input: CreateIPSetRequest) throws -> CreateIPSetResponse {
        return try client.send(operation: "CreateIPSet", path: "/detector/{detectorId}/ipset", httpMethod: "POST", input: input)
    }

    ///  Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.
    public func createMembers(_ input: CreateMembersRequest) throws -> CreateMembersResponse {
        return try client.send(operation: "CreateMembers", path: "/detector/{detectorId}/member", httpMethod: "POST", input: input)
    }

    ///  Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
    public func createSampleFindings(_ input: CreateSampleFindingsRequest) throws -> CreateSampleFindingsResponse {
        return try client.send(operation: "CreateSampleFindings", path: "/detector/{detectorId}/findings/create", httpMethod: "POST", input: input)
    }

    ///  Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets.
    public func createThreatIntelSet(_ input: CreateThreatIntelSetRequest) throws -> CreateThreatIntelSetResponse {
        return try client.send(operation: "CreateThreatIntelSet", path: "/detector/{detectorId}/threatintelset", httpMethod: "POST", input: input)
    }

    ///  Declines invitations sent to the current member account by AWS account specified by their account IDs.
    public func declineInvitations(_ input: DeclineInvitationsRequest) throws -> DeclineInvitationsResponse {
        return try client.send(operation: "DeclineInvitations", path: "/invitation/decline", httpMethod: "POST", input: input)
    }

    ///  Deletes a Amazon GuardDuty detector specified by the detector ID.
    public func deleteDetector(_ input: DeleteDetectorRequest) throws -> DeleteDetectorResponse {
        return try client.send(operation: "DeleteDetector", path: "/detector/{detectorId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the filter specified by the filter name.
    public func deleteFilter(_ input: DeleteFilterRequest) throws -> DeleteFilterResponse {
        return try client.send(operation: "DeleteFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the IPSet specified by the IPSet ID.
    public func deleteIPSet(_ input: DeleteIPSetRequest) throws -> DeleteIPSetResponse {
        return try client.send(operation: "DeleteIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.
    public func deleteInvitations(_ input: DeleteInvitationsRequest) throws -> DeleteInvitationsResponse {
        return try client.send(operation: "DeleteInvitations", path: "/invitation/delete", httpMethod: "POST", input: input)
    }

    ///  Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func deleteMembers(_ input: DeleteMembersRequest) throws -> DeleteMembersResponse {
        return try client.send(operation: "DeleteMembers", path: "/detector/{detectorId}/member/delete", httpMethod: "POST", input: input)
    }

    ///  Deletes ThreatIntelSet specified by the ThreatIntelSet ID.
    public func deleteThreatIntelSet(_ input: DeleteThreatIntelSetRequest) throws -> DeleteThreatIntelSetResponse {
        return try client.send(operation: "DeleteThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "DELETE", input: input)
    }

    ///  Disassociates the current GuardDuty member account from its master account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest) throws -> DisassociateFromMasterAccountResponse {
        return try client.send(operation: "DisassociateFromMasterAccount", path: "/detector/{detectorId}/master/disassociate", httpMethod: "POST", input: input)
    }

    ///  Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func disassociateMembers(_ input: DisassociateMembersRequest) throws -> DisassociateMembersResponse {
        return try client.send(operation: "DisassociateMembers", path: "/detector/{detectorId}/member/disassociate", httpMethod: "POST", input: input)
    }

    ///  Retrieves an Amazon GuardDuty detector specified by the detectorId.
    public func getDetector(_ input: GetDetectorRequest) throws -> GetDetectorResponse {
        return try client.send(operation: "GetDetector", path: "/detector/{detectorId}", httpMethod: "GET", input: input)
    }

    ///  Returns the details of the filter specified by the filter name.
    public func getFilter(_ input: GetFilterRequest) throws -> GetFilterResponse {
        return try client.send(operation: "GetFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "GET", input: input)
    }

    ///  Describes Amazon GuardDuty findings specified by finding IDs.
    public func getFindings(_ input: GetFindingsRequest) throws -> GetFindingsResponse {
        return try client.send(operation: "GetFindings", path: "/detector/{detectorId}/findings/get", httpMethod: "POST", input: input)
    }

    ///  Lists Amazon GuardDuty findings' statistics for the specified detector ID.
    public func getFindingsStatistics(_ input: GetFindingsStatisticsRequest) throws -> GetFindingsStatisticsResponse {
        return try client.send(operation: "GetFindingsStatistics", path: "/detector/{detectorId}/findings/statistics", httpMethod: "POST", input: input)
    }

    ///  Retrieves the IPSet specified by the IPSet ID.
    public func getIPSet(_ input: GetIPSetRequest) throws -> GetIPSetResponse {
        return try client.send(operation: "GetIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "GET", input: input)
    }

    ///  Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
    public func getInvitationsCount(_ input: GetInvitationsCountRequest) throws -> GetInvitationsCountResponse {
        return try client.send(operation: "GetInvitationsCount", path: "/invitation/count", httpMethod: "GET", input: input)
    }

    ///  Provides the details for the GuardDuty master account to the current GuardDuty member account.
    public func getMasterAccount(_ input: GetMasterAccountRequest) throws -> GetMasterAccountResponse {
        return try client.send(operation: "GetMasterAccount", path: "/detector/{detectorId}/master", httpMethod: "GET", input: input)
    }

    ///  Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
    public func getMembers(_ input: GetMembersRequest) throws -> GetMembersResponse {
        return try client.send(operation: "GetMembers", path: "/detector/{detectorId}/member/get", httpMethod: "POST", input: input)
    }

    ///  Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
    public func getThreatIntelSet(_ input: GetThreatIntelSetRequest) throws -> GetThreatIntelSetResponse {
        return try client.send(operation: "GetThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "GET", input: input)
    }

    ///  Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.
    public func inviteMembers(_ input: InviteMembersRequest) throws -> InviteMembersResponse {
        return try client.send(operation: "InviteMembers", path: "/detector/{detectorId}/member/invite", httpMethod: "POST", input: input)
    }

    ///  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    public func listDetectors(_ input: ListDetectorsRequest) throws -> ListDetectorsResponse {
        return try client.send(operation: "ListDetectors", path: "/detector", httpMethod: "GET", input: input)
    }

    ///  Returns a paginated list of the current filters.
    public func listFilters(_ input: ListFiltersRequest) throws -> ListFiltersResponse {
        return try client.send(operation: "ListFilters", path: "/detector/{detectorId}/filter", httpMethod: "GET", input: input)
    }

    ///  Lists Amazon GuardDuty findings for the specified detector ID.
    public func listFindings(_ input: ListFindingsRequest) throws -> ListFindingsResponse {
        return try client.send(operation: "ListFindings", path: "/detector/{detectorId}/findings", httpMethod: "POST", input: input)
    }

    ///  Lists the IPSets of the GuardDuty service specified by the detector ID.
    public func listIPSets(_ input: ListIPSetsRequest) throws -> ListIPSetsResponse {
        return try client.send(operation: "ListIPSets", path: "/detector/{detectorId}/ipset", httpMethod: "GET", input: input)
    }

    ///  Lists all GuardDuty membership invitations that were sent to the current AWS account.
    public func listInvitations(_ input: ListInvitationsRequest) throws -> ListInvitationsResponse {
        return try client.send(operation: "ListInvitations", path: "/invitation", httpMethod: "GET", input: input)
    }

    ///  Lists details about all member accounts for the current GuardDuty master account.
    public func listMembers(_ input: ListMembersRequest) throws -> ListMembersResponse {
        return try client.send(operation: "ListMembers", path: "/detector/{detectorId}/member", httpMethod: "GET", input: input)
    }

    ///  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.
    public func listThreatIntelSets(_ input: ListThreatIntelSetsRequest) throws -> ListThreatIntelSetsResponse {
        return try client.send(operation: "ListThreatIntelSets", path: "/detector/{detectorId}/threatintelset", httpMethod: "GET", input: input)
    }

    ///  Re-enables GuardDuty to monitor findings of the member accounts specified by the account IDs. A master GuardDuty account can run this command after disabling GuardDuty from monitoring these members' findings by running StopMonitoringMembers.
    public func startMonitoringMembers(_ input: StartMonitoringMembersRequest) throws -> StartMonitoringMembersResponse {
        return try client.send(operation: "StartMonitoringMembers", path: "/detector/{detectorId}/member/start", httpMethod: "POST", input: input)
    }

    ///  Disables GuardDuty from monitoring findings of the member accounts specified by the account IDs. After running this command, a master GuardDuty account can run StartMonitoringMembers to re-enable GuardDuty to monitor these members’ findings.
    public func stopMonitoringMembers(_ input: StopMonitoringMembersRequest) throws -> StopMonitoringMembersResponse {
        return try client.send(operation: "StopMonitoringMembers", path: "/detector/{detectorId}/member/stop", httpMethod: "POST", input: input)
    }

    ///  Unarchives Amazon GuardDuty findings specified by the list of finding IDs.
    public func unarchiveFindings(_ input: UnarchiveFindingsRequest) throws -> UnarchiveFindingsResponse {
        return try client.send(operation: "UnarchiveFindings", path: "/detector/{detectorId}/findings/unarchive", httpMethod: "POST", input: input)
    }

    ///  Updates an Amazon GuardDuty detector specified by the detectorId.
    public func updateDetector(_ input: UpdateDetectorRequest) throws -> UpdateDetectorResponse {
        return try client.send(operation: "UpdateDetector", path: "/detector/{detectorId}", httpMethod: "POST", input: input)
    }

    ///  Updates the filter specified by the filter name.
    public func updateFilter(_ input: UpdateFilterRequest) throws -> UpdateFilterResponse {
        return try client.send(operation: "UpdateFilter", path: "/detector/{detectorId}/filter/{filterName}", httpMethod: "POST", input: input)
    }

    ///  Marks specified Amazon GuardDuty findings as useful or not useful.
    public func updateFindingsFeedback(_ input: UpdateFindingsFeedbackRequest) throws -> UpdateFindingsFeedbackResponse {
        return try client.send(operation: "UpdateFindingsFeedback", path: "/detector/{detectorId}/findings/feedback", httpMethod: "POST", input: input)
    }

    ///  Updates the IPSet specified by the IPSet ID.
    public func updateIPSet(_ input: UpdateIPSetRequest) throws -> UpdateIPSetResponse {
        return try client.send(operation: "UpdateIPSet", path: "/detector/{detectorId}/ipset/{ipSetId}", httpMethod: "POST", input: input)
    }

    ///  Updates the ThreatIntelSet specified by ThreatIntelSet ID.
    public func updateThreatIntelSet(_ input: UpdateThreatIntelSetRequest) throws -> UpdateThreatIntelSetResponse {
        return try client.send(operation: "UpdateThreatIntelSet", path: "/detector/{detectorId}/threatintelset/{threatIntelSetId}", httpMethod: "POST", input: input)
    }


}