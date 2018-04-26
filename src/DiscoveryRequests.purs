
module AWS.Discovery.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Discovery as Discovery
import AWS.Discovery.Types as DiscoveryTypes


-- | <p>Associates one or more configuration items with an application.</p>
associateConfigurationItemsToApplication :: forall eff. Discovery.Service -> DiscoveryTypes.AssociateConfigurationItemsToApplicationRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.AssociateConfigurationItemsToApplicationResponse
associateConfigurationItemsToApplication (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "associateConfigurationItemsToApplication"


-- | <p>Creates an application with the given name and description.</p>
createApplication :: forall eff. Discovery.Service -> DiscoveryTypes.CreateApplicationRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.CreateApplicationResponse
createApplication (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createApplication"


-- | <p>Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.</p>
createTags :: forall eff. Discovery.Service -> DiscoveryTypes.CreateTagsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.CreateTagsResponse
createTags (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTags"


-- | <p>Deletes a list of applications and their associations with configuration items.</p>
deleteApplications :: forall eff. Discovery.Service -> DiscoveryTypes.DeleteApplicationsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.DeleteApplicationsResponse
deleteApplications (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplications"


-- | <p>Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.</p>
deleteTags :: forall eff. Discovery.Service -> DiscoveryTypes.DeleteTagsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.DeleteTagsResponse
deleteTags (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTags"


-- | <p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an ID.</p>
describeAgents :: forall eff. Discovery.Service -> DiscoveryTypes.DescribeAgentsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.DescribeAgentsResponse
describeAgents (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAgents"


-- | <p>Retrieves attributes for a list of configuration item IDs. All of the supplied IDs must be for the same asset type (server, application, process, or connection). Output fields are specific to the asset type selected. For example, the output for a <i>server</i> configuration item includes a list of attributes about the server, such as host name, operating system, and number of network cards.</p> <p>For a complete list of outputs for each asset type, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations">Using the DescribeConfigurations Action</a>.</p>
describeConfigurations :: forall eff. Discovery.Service -> DiscoveryTypes.DescribeConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.DescribeConfigurationsResponse
describeConfigurations (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeConfigurations"


-- | <p>Deprecated. Use <code>DescribeExportTasks</code> instead.</p> <p>Retrieves the status of a given export process. You can retrieve status from a maximum of 100 processes.</p>
describeExportConfigurations :: forall eff. Discovery.Service -> DiscoveryTypes.DescribeExportConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.DescribeExportConfigurationsResponse
describeExportConfigurations (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeExportConfigurations"


-- | <p>Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.</p>
describeExportTasks :: forall eff. Discovery.Service -> DiscoveryTypes.DescribeExportTasksRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.DescribeExportTasksResponse
describeExportTasks (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeExportTasks"


-- | <p>Retrieves a list of configuration items that are tagged with a specific tag. Or retrieves a list of all tags assigned to a specific configuration item.</p>
describeTags :: forall eff. Discovery.Service -> DiscoveryTypes.DescribeTagsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.DescribeTagsResponse
describeTags (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTags"


-- | <p>Disassociates one or more configuration items from an application.</p>
disassociateConfigurationItemsFromApplication :: forall eff. Discovery.Service -> DiscoveryTypes.DisassociateConfigurationItemsFromApplicationRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.DisassociateConfigurationItemsFromApplicationResponse
disassociateConfigurationItemsFromApplication (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateConfigurationItemsFromApplication"


-- | <p>Deprecated. Use <code>StartExportTask</code> instead.</p> <p>Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the <i>DescribeExportConfigurations</i> API. The system imposes a limit of two configuration exports in six hours.</p>
exportConfigurations :: forall eff. Discovery.Service ->  Aff (exception :: EXCEPTION | eff) DiscoveryTypes.ExportConfigurationsResponse
exportConfigurations (Discovery.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "exportConfigurations"


-- | <p>Retrieves a short summary of discovered assets.</p>
getDiscoverySummary :: forall eff. Discovery.Service -> DiscoveryTypes.GetDiscoverySummaryRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.GetDiscoverySummaryResponse
getDiscoverySummary (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDiscoverySummary"


-- | <p>Retrieves a list of configuration items according to criteria that you specify in a filter. The filter criteria identifies the relationship requirements.</p>
listConfigurations :: forall eff. Discovery.Service -> DiscoveryTypes.ListConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.ListConfigurationsResponse
listConfigurations (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listConfigurations"


-- | <p>Retrieves a list of servers that are one network hop away from a specified server.</p>
listServerNeighbors :: forall eff. Discovery.Service -> DiscoveryTypes.ListServerNeighborsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.ListServerNeighborsResponse
listServerNeighbors (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listServerNeighbors"


-- | <p>Instructs the specified agents or connectors to start collecting data.</p>
startDataCollectionByAgentIds :: forall eff. Discovery.Service -> DiscoveryTypes.StartDataCollectionByAgentIdsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.StartDataCollectionByAgentIdsResponse
startDataCollectionByAgentIds (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startDataCollectionByAgentIds"


-- | <p> Begins the export of discovered data to an S3 bucket.</p> <p> If you specify <code>agentIds</code> in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using <code>startTime</code> and <code>endTime</code>. Export of detailed agent data is limited to five concurrently running exports. </p> <p> If you do not include an <code>agentIds</code> filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. </p>
startExportTask :: forall eff. Discovery.Service -> DiscoveryTypes.StartExportTaskRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.StartExportTaskResponse
startExportTask (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startExportTask"


-- | <p>Instructs the specified agents or connectors to stop collecting data.</p>
stopDataCollectionByAgentIds :: forall eff. Discovery.Service -> DiscoveryTypes.StopDataCollectionByAgentIdsRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.StopDataCollectionByAgentIdsResponse
stopDataCollectionByAgentIds (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopDataCollectionByAgentIds"


-- | <p>Updates metadata about an application.</p>
updateApplication :: forall eff. Discovery.Service -> DiscoveryTypes.UpdateApplicationRequest -> Aff (exception :: EXCEPTION | eff) DiscoveryTypes.UpdateApplicationResponse
updateApplication (Discovery.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateApplication"
