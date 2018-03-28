## Module AWS.Discovery.Requests

#### `associateConfigurationItemsToApplication`

``` purescript
associateConfigurationItemsToApplication :: forall eff. Service -> AssociateConfigurationItemsToApplicationRequest -> Aff (exception :: EXCEPTION | eff) AssociateConfigurationItemsToApplicationResponse
```

<p>Associates one or more configuration items with an application.</p>

#### `createApplication`

``` purescript
createApplication :: forall eff. Service -> CreateApplicationRequest -> Aff (exception :: EXCEPTION | eff) CreateApplicationResponse
```

<p>Creates an application with the given name and description.</p>

#### `createTags`

``` purescript
createTags :: forall eff. Service -> CreateTagsRequest -> Aff (exception :: EXCEPTION | eff) CreateTagsResponse
```

<p>Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.</p>

#### `deleteApplications`

``` purescript
deleteApplications :: forall eff. Service -> DeleteApplicationsRequest -> Aff (exception :: EXCEPTION | eff) DeleteApplicationsResponse
```

<p>Deletes a list of applications and their associations with configuration items.</p>

#### `deleteTags`

``` purescript
deleteTags :: forall eff. Service -> DeleteTagsRequest -> Aff (exception :: EXCEPTION | eff) DeleteTagsResponse
```

<p>Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.</p>

#### `describeAgents`

``` purescript
describeAgents :: forall eff. Service -> DescribeAgentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeAgentsResponse
```

<p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an ID.</p>

#### `describeConfigurations`

``` purescript
describeConfigurations :: forall eff. Service -> DescribeConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeConfigurationsResponse
```

<p>Retrieves attributes for a list of configuration item IDs. All of the supplied IDs must be for the same asset type (server, application, process, or connection). Output fields are specific to the asset type selected. For example, the output for a <i>server</i> configuration item includes a list of attributes about the server, such as host name, operating system, and number of network cards.</p> <p>For a complete list of outputs for each asset type, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations">Using the DescribeConfigurations Action</a>.</p>

#### `describeExportConfigurations`

``` purescript
describeExportConfigurations :: forall eff. Service -> DescribeExportConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeExportConfigurationsResponse
```

<p>Deprecated. Use <code>DescribeExportTasks</code> instead.</p> <p>Retrieves the status of a given export process. You can retrieve status from a maximum of 100 processes.</p>

#### `describeExportTasks`

``` purescript
describeExportTasks :: forall eff. Service -> DescribeExportTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeExportTasksResponse
```

<p>Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.</p>

#### `describeTags`

``` purescript
describeTags :: forall eff. Service -> DescribeTagsRequest -> Aff (exception :: EXCEPTION | eff) DescribeTagsResponse
```

<p>Retrieves a list of configuration items that are tagged with a specific tag. Or retrieves a list of all tags assigned to a specific configuration item.</p>

#### `disassociateConfigurationItemsFromApplication`

``` purescript
disassociateConfigurationItemsFromApplication :: forall eff. Service -> DisassociateConfigurationItemsFromApplicationRequest -> Aff (exception :: EXCEPTION | eff) DisassociateConfigurationItemsFromApplicationResponse
```

<p>Disassociates one or more configuration items from an application.</p>

#### `exportConfigurations`

``` purescript
exportConfigurations :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) ExportConfigurationsResponse
```

<p>Deprecated. Use <code>StartExportTask</code> instead.</p> <p>Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the <i>DescribeExportConfigurations</i> API. The system imposes a limit of two configuration exports in six hours.</p>

#### `getDiscoverySummary`

``` purescript
getDiscoverySummary :: forall eff. Service -> GetDiscoverySummaryRequest -> Aff (exception :: EXCEPTION | eff) GetDiscoverySummaryResponse
```

<p>Retrieves a short summary of discovered assets.</p>

#### `listConfigurations`

``` purescript
listConfigurations :: forall eff. Service -> ListConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) ListConfigurationsResponse
```

<p>Retrieves a list of configuration items according to criteria that you specify in a filter. The filter criteria identifies the relationship requirements.</p>

#### `listServerNeighbors`

``` purescript
listServerNeighbors :: forall eff. Service -> ListServerNeighborsRequest -> Aff (exception :: EXCEPTION | eff) ListServerNeighborsResponse
```

<p>Retrieves a list of servers that are one network hop away from a specified server.</p>

#### `startDataCollectionByAgentIds`

``` purescript
startDataCollectionByAgentIds :: forall eff. Service -> StartDataCollectionByAgentIdsRequest -> Aff (exception :: EXCEPTION | eff) StartDataCollectionByAgentIdsResponse
```

<p>Instructs the specified agents or connectors to start collecting data.</p>

#### `startExportTask`

``` purescript
startExportTask :: forall eff. Service -> StartExportTaskRequest -> Aff (exception :: EXCEPTION | eff) StartExportTaskResponse
```

<p> Begins the export of discovered data to an S3 bucket.</p> <p> If you specify <code>agentIds</code> in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using <code>startTime</code> and <code>endTime</code>. Export of detailed agent data is limited to five concurrently running exports. </p> <p> If you do not include an <code>agentIds</code> filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. </p>

#### `stopDataCollectionByAgentIds`

``` purescript
stopDataCollectionByAgentIds :: forall eff. Service -> StopDataCollectionByAgentIdsRequest -> Aff (exception :: EXCEPTION | eff) StopDataCollectionByAgentIdsResponse
```

<p>Instructs the specified agents or connectors to stop collecting data.</p>

#### `updateApplication`

``` purescript
updateApplication :: forall eff. Service -> UpdateApplicationRequest -> Aff (exception :: EXCEPTION | eff) UpdateApplicationResponse
```

<p>Updates metadata about an application.</p>


