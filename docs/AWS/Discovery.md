## Module AWS.Discovery

<fullname>AWS Application Discovery Service</fullname> <p>AWS Application Discovery Service helps you plan application migration projects by automatically identifying servers, virtual machines (VMs), software, and software dependencies running in your on-premises data centers. Application Discovery Service also collects application performance data, which can help you assess the outcome of your migration. The data collected by Application Discovery Service is securely retained in an Amazon-hosted and managed database in the cloud. You can export the data as a CSV or XML file into your preferred visualization tool or cloud-migration solution to plan your migration. For more information, see the Application Discovery Service <a href="http://aws.amazon.com/application-discovery/faqs/">FAQ</a>.</p> <p>Application Discovery Service offers two modes of operation.</p> <ul> <li> <p> <b>Agentless discovery</b> mode is recommended for environments that use VMware vCenter Server. This mode doesn't require you to install an agent on each host. Agentless discovery gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment. Agentless discovery doesn't collect information about software and software dependencies. It also doesn't work in non-VMware environments. We recommend that you use agent-based discovery for non-VMware environments and if you want to collect information about software and software dependencies. You can also run agent-based and agentless discovery simultaneously. Use agentless discovery to quickly complete the initial infrastructure assessment and then install agents on select hosts to gather information about software and software dependencies.</p> </li> <li> <p> <b>Agent-based discovery</b> mode collects a richer set of data than agentless discovery by using Amazon software, the AWS Application Discovery Agent, which you install on one or more hosts in your data center. The agent captures infrastructure and application information, including an inventory of installed software applications, system and process performance, resource utilization, and network dependencies between workloads. The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the cloud. </p> </li> </ul> <p>Application Discovery Service integrates with application discovery solutions from AWS Partner Network (APN) partners. Third-party application discovery tools can query Application Discovery Service and write to the Application Discovery Service database using a public API. You can then import the data into either a visualization tool or cloud-migration solution.</p> <important> <p>Application Discovery Service doesn't gather sensitive information. All data is handled according to the <a href="http://aws.amazon.com/privacy/">AWS Privacy Policy</a>. You can operate Application Discovery Service using offline mode to inspect collected data before it is shared with the service.</p> </important> <p>Your AWS account must be granted access to Application Discovery Service, a process called <i>whitelisting</i>. This is true for AWS partners and customers alike. To request access, <a href="http://aws.amazon.com/application-discovery/how-to-start/"> sign up for AWS Application Discovery Service</a>.</p> <p>This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.</p> <p>This guide is intended for use with the <a href="http://docs.aws.amazon.com/application-discovery/latest/userguide/"> <i>AWS Application Discovery Service User Guide</i> </a>.</p>

#### `associateConfigurationItemsToApplication`

``` purescript
associateConfigurationItemsToApplication :: forall eff. AssociateConfigurationItemsToApplicationRequest -> Aff (exception :: EXCEPTION | eff) AssociateConfigurationItemsToApplicationResponse
```

<p>Associates one or more configuration items with an application.</p>

#### `createApplication`

``` purescript
createApplication :: forall eff. CreateApplicationRequest -> Aff (exception :: EXCEPTION | eff) CreateApplicationResponse
```

<p>Creates an application with the given name and description.</p>

#### `createTags`

``` purescript
createTags :: forall eff. CreateTagsRequest -> Aff (exception :: EXCEPTION | eff) CreateTagsResponse
```

<p>Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.</p>

#### `deleteApplications`

``` purescript
deleteApplications :: forall eff. DeleteApplicationsRequest -> Aff (exception :: EXCEPTION | eff) DeleteApplicationsResponse
```

<p>Deletes a list of applications and their associations with configuration items.</p>

#### `deleteTags`

``` purescript
deleteTags :: forall eff. DeleteTagsRequest -> Aff (exception :: EXCEPTION | eff) DeleteTagsResponse
```

<p>Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.</p>

#### `describeAgents`

``` purescript
describeAgents :: forall eff. DescribeAgentsRequest -> Aff (exception :: EXCEPTION | eff) DescribeAgentsResponse
```

<p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an ID.</p>

#### `describeConfigurations`

``` purescript
describeConfigurations :: forall eff. DescribeConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeConfigurationsResponse
```

<p>Retrieves attributes for a list of configuration item IDs. All of the supplied IDs must be for the same asset type (server, application, process, or connection). Output fields are specific to the asset type selected. For example, the output for a <i>server</i> configuration item includes a list of attributes about the server, such as host name, operating system, and number of network cards.</p> <p>For a complete list of outputs for each asset type, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html#DescribeConfigurations">Using the DescribeConfigurations Action</a>.</p>

#### `describeExportConfigurations`

``` purescript
describeExportConfigurations :: forall eff. DescribeExportConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) DescribeExportConfigurationsResponse
```

<p>Deprecated. Use <code>DescribeExportTasks</code> instead.</p> <p>Retrieves the status of a given export process. You can retrieve status from a maximum of 100 processes.</p>

#### `describeExportTasks`

``` purescript
describeExportTasks :: forall eff. DescribeExportTasksRequest -> Aff (exception :: EXCEPTION | eff) DescribeExportTasksResponse
```

<p>Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.</p>

#### `describeTags`

``` purescript
describeTags :: forall eff. DescribeTagsRequest -> Aff (exception :: EXCEPTION | eff) DescribeTagsResponse
```

<p>Retrieves a list of configuration items that are tagged with a specific tag. Or retrieves a list of all tags assigned to a specific configuration item.</p>

#### `disassociateConfigurationItemsFromApplication`

``` purescript
disassociateConfigurationItemsFromApplication :: forall eff. DisassociateConfigurationItemsFromApplicationRequest -> Aff (exception :: EXCEPTION | eff) DisassociateConfigurationItemsFromApplicationResponse
```

<p>Disassociates one or more configuration items from an application.</p>

#### `exportConfigurations`

``` purescript
exportConfigurations :: forall eff. Aff (exception :: EXCEPTION | eff) ExportConfigurationsResponse
```

<p>Deprecated. Use <code>StartExportTask</code> instead.</p> <p>Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the <i>DescribeExportConfigurations</i> API. The system imposes a limit of two configuration exports in six hours.</p>

#### `getDiscoverySummary`

``` purescript
getDiscoverySummary :: forall eff. GetDiscoverySummaryRequest -> Aff (exception :: EXCEPTION | eff) GetDiscoverySummaryResponse
```

<p>Retrieves a short summary of discovered assets.</p>

#### `listConfigurations`

``` purescript
listConfigurations :: forall eff. ListConfigurationsRequest -> Aff (exception :: EXCEPTION | eff) ListConfigurationsResponse
```

<p>Retrieves a list of configuration items according to criteria that you specify in a filter. The filter criteria identifies the relationship requirements.</p>

#### `listServerNeighbors`

``` purescript
listServerNeighbors :: forall eff. ListServerNeighborsRequest -> Aff (exception :: EXCEPTION | eff) ListServerNeighborsResponse
```

<p>Retrieves a list of servers that are one network hop away from a specified server.</p>

#### `startDataCollectionByAgentIds`

``` purescript
startDataCollectionByAgentIds :: forall eff. StartDataCollectionByAgentIdsRequest -> Aff (exception :: EXCEPTION | eff) StartDataCollectionByAgentIdsResponse
```

<p>Instructs the specified agents or connectors to start collecting data.</p>

#### `startExportTask`

``` purescript
startExportTask :: forall eff. StartExportTaskRequest -> Aff (exception :: EXCEPTION | eff) StartExportTaskResponse
```

<p> Begins the export of discovered data to an S3 bucket.</p> <p> If you specify <code>agentIds</code> in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using <code>startTime</code> and <code>endTime</code>. Export of detailed agent data is limited to five concurrently running exports. </p> <p> If you do not include an <code>agentIds</code> filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. </p>

#### `stopDataCollectionByAgentIds`

``` purescript
stopDataCollectionByAgentIds :: forall eff. StopDataCollectionByAgentIdsRequest -> Aff (exception :: EXCEPTION | eff) StopDataCollectionByAgentIdsResponse
```

<p>Instructs the specified agents or connectors to stop collecting data.</p>

#### `updateApplication`

``` purescript
updateApplication :: forall eff. UpdateApplicationRequest -> Aff (exception :: EXCEPTION | eff) UpdateApplicationResponse
```

<p>Updates metadata about an application.</p>

#### `AgentConfigurationStatus`

``` purescript
newtype AgentConfigurationStatus
  = AgentConfigurationStatus { agentId :: NullOrUndefined (String), operationSucceeded :: NullOrUndefined (Boolean), description :: NullOrUndefined (String) }
```

<p>Information about agents or connectors that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation, and whether the agent/connector configuration was updated.</p>

##### Instances
``` purescript
Newtype AgentConfigurationStatus _
Generic AgentConfigurationStatus _
Show AgentConfigurationStatus
Decode AgentConfigurationStatus
Encode AgentConfigurationStatus
```

#### `newAgentConfigurationStatus`

``` purescript
newAgentConfigurationStatus :: AgentConfigurationStatus
```

Constructs AgentConfigurationStatus from required parameters

#### `newAgentConfigurationStatus'`

``` purescript
newAgentConfigurationStatus' :: ({ agentId :: NullOrUndefined (String), operationSucceeded :: NullOrUndefined (Boolean), description :: NullOrUndefined (String) } -> { agentId :: NullOrUndefined (String), operationSucceeded :: NullOrUndefined (Boolean), description :: NullOrUndefined (String) }) -> AgentConfigurationStatus
```

Constructs AgentConfigurationStatus's fields from required parameters

#### `AgentConfigurationStatusList`

``` purescript
newtype AgentConfigurationStatusList
  = AgentConfigurationStatusList (Array AgentConfigurationStatus)
```

##### Instances
``` purescript
Newtype AgentConfigurationStatusList _
Generic AgentConfigurationStatusList _
Show AgentConfigurationStatusList
Decode AgentConfigurationStatusList
Encode AgentConfigurationStatusList
```

#### `AgentId`

``` purescript
newtype AgentId
  = AgentId String
```

##### Instances
``` purescript
Newtype AgentId _
Generic AgentId _
Show AgentId
Decode AgentId
Encode AgentId
```

#### `AgentIds`

``` purescript
newtype AgentIds
  = AgentIds (Array AgentId)
```

##### Instances
``` purescript
Newtype AgentIds _
Generic AgentIds _
Show AgentIds
Decode AgentIds
Encode AgentIds
```

#### `AgentInfo`

``` purescript
newtype AgentInfo
  = AgentInfo { agentId :: NullOrUndefined (AgentId), hostName :: NullOrUndefined (String), agentNetworkInfoList :: NullOrUndefined (AgentNetworkInfoList), connectorId :: NullOrUndefined (String), version :: NullOrUndefined (String), health :: NullOrUndefined (AgentStatus), lastHealthPingTime :: NullOrUndefined (String), collectionStatus :: NullOrUndefined (String), agentType :: NullOrUndefined (String), registeredTime :: NullOrUndefined (String) }
```

<p>Information about agents or connectors associated with the user’s AWS account. Information includes agent or connector IDs, IP addresses, media access control (MAC) addresses, agent or connector health, hostname where the agent or connector resides, and agent version for each agent.</p>

##### Instances
``` purescript
Newtype AgentInfo _
Generic AgentInfo _
Show AgentInfo
Decode AgentInfo
Encode AgentInfo
```

#### `newAgentInfo`

``` purescript
newAgentInfo :: AgentInfo
```

Constructs AgentInfo from required parameters

#### `newAgentInfo'`

``` purescript
newAgentInfo' :: ({ agentId :: NullOrUndefined (AgentId), hostName :: NullOrUndefined (String), agentNetworkInfoList :: NullOrUndefined (AgentNetworkInfoList), connectorId :: NullOrUndefined (String), version :: NullOrUndefined (String), health :: NullOrUndefined (AgentStatus), lastHealthPingTime :: NullOrUndefined (String), collectionStatus :: NullOrUndefined (String), agentType :: NullOrUndefined (String), registeredTime :: NullOrUndefined (String) } -> { agentId :: NullOrUndefined (AgentId), hostName :: NullOrUndefined (String), agentNetworkInfoList :: NullOrUndefined (AgentNetworkInfoList), connectorId :: NullOrUndefined (String), version :: NullOrUndefined (String), health :: NullOrUndefined (AgentStatus), lastHealthPingTime :: NullOrUndefined (String), collectionStatus :: NullOrUndefined (String), agentType :: NullOrUndefined (String), registeredTime :: NullOrUndefined (String) }) -> AgentInfo
```

Constructs AgentInfo's fields from required parameters

#### `AgentNetworkInfo`

``` purescript
newtype AgentNetworkInfo
  = AgentNetworkInfo { ipAddress :: NullOrUndefined (String), macAddress :: NullOrUndefined (String) }
```

<p>Network details about the host where the agent/connector resides.</p>

##### Instances
``` purescript
Newtype AgentNetworkInfo _
Generic AgentNetworkInfo _
Show AgentNetworkInfo
Decode AgentNetworkInfo
Encode AgentNetworkInfo
```

#### `newAgentNetworkInfo`

``` purescript
newAgentNetworkInfo :: AgentNetworkInfo
```

Constructs AgentNetworkInfo from required parameters

#### `newAgentNetworkInfo'`

``` purescript
newAgentNetworkInfo' :: ({ ipAddress :: NullOrUndefined (String), macAddress :: NullOrUndefined (String) } -> { ipAddress :: NullOrUndefined (String), macAddress :: NullOrUndefined (String) }) -> AgentNetworkInfo
```

Constructs AgentNetworkInfo's fields from required parameters

#### `AgentNetworkInfoList`

``` purescript
newtype AgentNetworkInfoList
  = AgentNetworkInfoList (Array AgentNetworkInfo)
```

##### Instances
``` purescript
Newtype AgentNetworkInfoList _
Generic AgentNetworkInfoList _
Show AgentNetworkInfoList
Decode AgentNetworkInfoList
Encode AgentNetworkInfoList
```

#### `AgentStatus`

``` purescript
newtype AgentStatus
  = AgentStatus String
```

##### Instances
``` purescript
Newtype AgentStatus _
Generic AgentStatus _
Show AgentStatus
Decode AgentStatus
Encode AgentStatus
```

#### `AgentsInfo`

``` purescript
newtype AgentsInfo
  = AgentsInfo (Array AgentInfo)
```

##### Instances
``` purescript
Newtype AgentsInfo _
Generic AgentsInfo _
Show AgentsInfo
Decode AgentsInfo
Encode AgentsInfo
```

#### `ApplicationId`

``` purescript
newtype ApplicationId
  = ApplicationId String
```

##### Instances
``` purescript
Newtype ApplicationId _
Generic ApplicationId _
Show ApplicationId
Decode ApplicationId
Encode ApplicationId
```

#### `ApplicationIdsList`

``` purescript
newtype ApplicationIdsList
  = ApplicationIdsList (Array ApplicationId)
```

##### Instances
``` purescript
Newtype ApplicationIdsList _
Generic ApplicationIdsList _
Show ApplicationIdsList
Decode ApplicationIdsList
Encode ApplicationIdsList
```

#### `AssociateConfigurationItemsToApplicationRequest`

``` purescript
newtype AssociateConfigurationItemsToApplicationRequest
  = AssociateConfigurationItemsToApplicationRequest { applicationConfigurationId :: ApplicationId, configurationIds :: ConfigurationIdList }
```

##### Instances
``` purescript
Newtype AssociateConfigurationItemsToApplicationRequest _
Generic AssociateConfigurationItemsToApplicationRequest _
Show AssociateConfigurationItemsToApplicationRequest
Decode AssociateConfigurationItemsToApplicationRequest
Encode AssociateConfigurationItemsToApplicationRequest
```

#### `newAssociateConfigurationItemsToApplicationRequest`

``` purescript
newAssociateConfigurationItemsToApplicationRequest :: ApplicationId -> ConfigurationIdList -> AssociateConfigurationItemsToApplicationRequest
```

Constructs AssociateConfigurationItemsToApplicationRequest from required parameters

#### `newAssociateConfigurationItemsToApplicationRequest'`

``` purescript
newAssociateConfigurationItemsToApplicationRequest' :: ApplicationId -> ConfigurationIdList -> ({ applicationConfigurationId :: ApplicationId, configurationIds :: ConfigurationIdList } -> { applicationConfigurationId :: ApplicationId, configurationIds :: ConfigurationIdList }) -> AssociateConfigurationItemsToApplicationRequest
```

Constructs AssociateConfigurationItemsToApplicationRequest's fields from required parameters

#### `AssociateConfigurationItemsToApplicationResponse`

``` purescript
newtype AssociateConfigurationItemsToApplicationResponse
  = AssociateConfigurationItemsToApplicationResponse NoArguments
```

##### Instances
``` purescript
Newtype AssociateConfigurationItemsToApplicationResponse _
Generic AssociateConfigurationItemsToApplicationResponse _
Show AssociateConfigurationItemsToApplicationResponse
Decode AssociateConfigurationItemsToApplicationResponse
Encode AssociateConfigurationItemsToApplicationResponse
```

#### `AuthorizationErrorException`

``` purescript
newtype AuthorizationErrorException
  = AuthorizationErrorException { message :: NullOrUndefined (Message) }
```

<p>The AWS user account does not have permission to perform the action. Check the IAM policy associated with this account.</p>

##### Instances
``` purescript
Newtype AuthorizationErrorException _
Generic AuthorizationErrorException _
Show AuthorizationErrorException
Decode AuthorizationErrorException
Encode AuthorizationErrorException
```

#### `newAuthorizationErrorException`

``` purescript
newAuthorizationErrorException :: AuthorizationErrorException
```

Constructs AuthorizationErrorException from required parameters

#### `newAuthorizationErrorException'`

``` purescript
newAuthorizationErrorException' :: ({ message :: NullOrUndefined (Message) } -> { message :: NullOrUndefined (Message) }) -> AuthorizationErrorException
```

Constructs AuthorizationErrorException's fields from required parameters

#### `BoxedInteger`

``` purescript
newtype BoxedInteger
  = BoxedInteger Int
```

##### Instances
``` purescript
Newtype BoxedInteger _
Generic BoxedInteger _
Show BoxedInteger
Decode BoxedInteger
Encode BoxedInteger
```

#### `Condition`

``` purescript
newtype Condition
  = Condition String
```

##### Instances
``` purescript
Newtype Condition _
Generic Condition _
Show Condition
Decode Condition
Encode Condition
```

#### `Configuration`

``` purescript
newtype Configuration
  = Configuration (StrMap String)
```

##### Instances
``` purescript
Newtype Configuration _
Generic Configuration _
Show Configuration
Decode Configuration
Encode Configuration
```

#### `ConfigurationId`

``` purescript
newtype ConfigurationId
  = ConfigurationId String
```

##### Instances
``` purescript
Newtype ConfigurationId _
Generic ConfigurationId _
Show ConfigurationId
Decode ConfigurationId
Encode ConfigurationId
```

#### `ConfigurationIdList`

``` purescript
newtype ConfigurationIdList
  = ConfigurationIdList (Array ConfigurationId)
```

##### Instances
``` purescript
Newtype ConfigurationIdList _
Generic ConfigurationIdList _
Show ConfigurationIdList
Decode ConfigurationIdList
Encode ConfigurationIdList
```

#### `ConfigurationItemType`

``` purescript
newtype ConfigurationItemType
  = ConfigurationItemType String
```

##### Instances
``` purescript
Newtype ConfigurationItemType _
Generic ConfigurationItemType _
Show ConfigurationItemType
Decode ConfigurationItemType
Encode ConfigurationItemType
```

#### `ConfigurationTag`

``` purescript
newtype ConfigurationTag
  = ConfigurationTag { configurationType :: NullOrUndefined (ConfigurationItemType), configurationId :: NullOrUndefined (ConfigurationId), key :: NullOrUndefined (TagKey), value :: NullOrUndefined (TagValue), timeOfCreation :: NullOrUndefined (TimeStamp) }
```

<p>Tags for a configuration item. Tags are metadata that help you categorize IT assets.</p>

##### Instances
``` purescript
Newtype ConfigurationTag _
Generic ConfigurationTag _
Show ConfigurationTag
Decode ConfigurationTag
Encode ConfigurationTag
```

#### `newConfigurationTag`

``` purescript
newConfigurationTag :: ConfigurationTag
```

Constructs ConfigurationTag from required parameters

#### `newConfigurationTag'`

``` purescript
newConfigurationTag' :: ({ configurationType :: NullOrUndefined (ConfigurationItemType), configurationId :: NullOrUndefined (ConfigurationId), key :: NullOrUndefined (TagKey), value :: NullOrUndefined (TagValue), timeOfCreation :: NullOrUndefined (TimeStamp) } -> { configurationType :: NullOrUndefined (ConfigurationItemType), configurationId :: NullOrUndefined (ConfigurationId), key :: NullOrUndefined (TagKey), value :: NullOrUndefined (TagValue), timeOfCreation :: NullOrUndefined (TimeStamp) }) -> ConfigurationTag
```

Constructs ConfigurationTag's fields from required parameters

#### `ConfigurationTagSet`

``` purescript
newtype ConfigurationTagSet
  = ConfigurationTagSet (Array ConfigurationTag)
```

##### Instances
``` purescript
Newtype ConfigurationTagSet _
Generic ConfigurationTagSet _
Show ConfigurationTagSet
Decode ConfigurationTagSet
Encode ConfigurationTagSet
```

#### `Configurations`

``` purescript
newtype Configurations
  = Configurations (Array Configuration)
```

##### Instances
``` purescript
Newtype Configurations _
Generic Configurations _
Show Configurations
Decode Configurations
Encode Configurations
```

#### `ConfigurationsDownloadUrl`

``` purescript
newtype ConfigurationsDownloadUrl
  = ConfigurationsDownloadUrl String
```

##### Instances
``` purescript
Newtype ConfigurationsDownloadUrl _
Generic ConfigurationsDownloadUrl _
Show ConfigurationsDownloadUrl
Decode ConfigurationsDownloadUrl
Encode ConfigurationsDownloadUrl
```

#### `ConfigurationsExportId`

``` purescript
newtype ConfigurationsExportId
  = ConfigurationsExportId String
```

##### Instances
``` purescript
Newtype ConfigurationsExportId _
Generic ConfigurationsExportId _
Show ConfigurationsExportId
Decode ConfigurationsExportId
Encode ConfigurationsExportId
```

#### `CreateApplicationRequest`

``` purescript
newtype CreateApplicationRequest
  = CreateApplicationRequest { name :: String, description :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateApplicationRequest _
Generic CreateApplicationRequest _
Show CreateApplicationRequest
Decode CreateApplicationRequest
Encode CreateApplicationRequest
```

#### `newCreateApplicationRequest`

``` purescript
newCreateApplicationRequest :: String -> CreateApplicationRequest
```

Constructs CreateApplicationRequest from required parameters

#### `newCreateApplicationRequest'`

``` purescript
newCreateApplicationRequest' :: String -> ({ name :: String, description :: NullOrUndefined (String) } -> { name :: String, description :: NullOrUndefined (String) }) -> CreateApplicationRequest
```

Constructs CreateApplicationRequest's fields from required parameters

#### `CreateApplicationResponse`

``` purescript
newtype CreateApplicationResponse
  = CreateApplicationResponse { configurationId :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateApplicationResponse _
Generic CreateApplicationResponse _
Show CreateApplicationResponse
Decode CreateApplicationResponse
Encode CreateApplicationResponse
```

#### `newCreateApplicationResponse`

``` purescript
newCreateApplicationResponse :: CreateApplicationResponse
```

Constructs CreateApplicationResponse from required parameters

#### `newCreateApplicationResponse'`

``` purescript
newCreateApplicationResponse' :: ({ configurationId :: NullOrUndefined (String) } -> { configurationId :: NullOrUndefined (String) }) -> CreateApplicationResponse
```

Constructs CreateApplicationResponse's fields from required parameters

#### `CreateTagsRequest`

``` purescript
newtype CreateTagsRequest
  = CreateTagsRequest { configurationIds :: ConfigurationIdList, tags :: TagSet }
```

##### Instances
``` purescript
Newtype CreateTagsRequest _
Generic CreateTagsRequest _
Show CreateTagsRequest
Decode CreateTagsRequest
Encode CreateTagsRequest
```

#### `newCreateTagsRequest`

``` purescript
newCreateTagsRequest :: ConfigurationIdList -> TagSet -> CreateTagsRequest
```

Constructs CreateTagsRequest from required parameters

#### `newCreateTagsRequest'`

``` purescript
newCreateTagsRequest' :: ConfigurationIdList -> TagSet -> ({ configurationIds :: ConfigurationIdList, tags :: TagSet } -> { configurationIds :: ConfigurationIdList, tags :: TagSet }) -> CreateTagsRequest
```

Constructs CreateTagsRequest's fields from required parameters

#### `CreateTagsResponse`

``` purescript
newtype CreateTagsResponse
  = CreateTagsResponse NoArguments
```

##### Instances
``` purescript
Newtype CreateTagsResponse _
Generic CreateTagsResponse _
Show CreateTagsResponse
Decode CreateTagsResponse
Encode CreateTagsResponse
```

#### `CustomerAgentInfo`

``` purescript
newtype CustomerAgentInfo
  = CustomerAgentInfo { activeAgents :: Int, healthyAgents :: Int, blackListedAgents :: Int, shutdownAgents :: Int, unhealthyAgents :: Int, totalAgents :: Int, unknownAgents :: Int }
```

<p>Inventory data for installed discovery agents.</p>

##### Instances
``` purescript
Newtype CustomerAgentInfo _
Generic CustomerAgentInfo _
Show CustomerAgentInfo
Decode CustomerAgentInfo
Encode CustomerAgentInfo
```

#### `newCustomerAgentInfo`

``` purescript
newCustomerAgentInfo :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> CustomerAgentInfo
```

Constructs CustomerAgentInfo from required parameters

#### `newCustomerAgentInfo'`

``` purescript
newCustomerAgentInfo' :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> ({ activeAgents :: Int, healthyAgents :: Int, blackListedAgents :: Int, shutdownAgents :: Int, unhealthyAgents :: Int, totalAgents :: Int, unknownAgents :: Int } -> { activeAgents :: Int, healthyAgents :: Int, blackListedAgents :: Int, shutdownAgents :: Int, unhealthyAgents :: Int, totalAgents :: Int, unknownAgents :: Int }) -> CustomerAgentInfo
```

Constructs CustomerAgentInfo's fields from required parameters

#### `CustomerConnectorInfo`

``` purescript
newtype CustomerConnectorInfo
  = CustomerConnectorInfo { activeConnectors :: Int, healthyConnectors :: Int, blackListedConnectors :: Int, shutdownConnectors :: Int, unhealthyConnectors :: Int, totalConnectors :: Int, unknownConnectors :: Int }
```

<p>Inventory data for installed discovery connectors.</p>

##### Instances
``` purescript
Newtype CustomerConnectorInfo _
Generic CustomerConnectorInfo _
Show CustomerConnectorInfo
Decode CustomerConnectorInfo
Encode CustomerConnectorInfo
```

#### `newCustomerConnectorInfo`

``` purescript
newCustomerConnectorInfo :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> CustomerConnectorInfo
```

Constructs CustomerConnectorInfo from required parameters

#### `newCustomerConnectorInfo'`

``` purescript
newCustomerConnectorInfo' :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> ({ activeConnectors :: Int, healthyConnectors :: Int, blackListedConnectors :: Int, shutdownConnectors :: Int, unhealthyConnectors :: Int, totalConnectors :: Int, unknownConnectors :: Int } -> { activeConnectors :: Int, healthyConnectors :: Int, blackListedConnectors :: Int, shutdownConnectors :: Int, unhealthyConnectors :: Int, totalConnectors :: Int, unknownConnectors :: Int }) -> CustomerConnectorInfo
```

Constructs CustomerConnectorInfo's fields from required parameters

#### `DeleteApplicationsRequest`

``` purescript
newtype DeleteApplicationsRequest
  = DeleteApplicationsRequest { configurationIds :: ApplicationIdsList }
```

##### Instances
``` purescript
Newtype DeleteApplicationsRequest _
Generic DeleteApplicationsRequest _
Show DeleteApplicationsRequest
Decode DeleteApplicationsRequest
Encode DeleteApplicationsRequest
```

#### `newDeleteApplicationsRequest`

``` purescript
newDeleteApplicationsRequest :: ApplicationIdsList -> DeleteApplicationsRequest
```

Constructs DeleteApplicationsRequest from required parameters

#### `newDeleteApplicationsRequest'`

``` purescript
newDeleteApplicationsRequest' :: ApplicationIdsList -> ({ configurationIds :: ApplicationIdsList } -> { configurationIds :: ApplicationIdsList }) -> DeleteApplicationsRequest
```

Constructs DeleteApplicationsRequest's fields from required parameters

#### `DeleteApplicationsResponse`

``` purescript
newtype DeleteApplicationsResponse
  = DeleteApplicationsResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteApplicationsResponse _
Generic DeleteApplicationsResponse _
Show DeleteApplicationsResponse
Decode DeleteApplicationsResponse
Encode DeleteApplicationsResponse
```

#### `DeleteTagsRequest`

``` purescript
newtype DeleteTagsRequest
  = DeleteTagsRequest { configurationIds :: ConfigurationIdList, tags :: NullOrUndefined (TagSet) }
```

##### Instances
``` purescript
Newtype DeleteTagsRequest _
Generic DeleteTagsRequest _
Show DeleteTagsRequest
Decode DeleteTagsRequest
Encode DeleteTagsRequest
```

#### `newDeleteTagsRequest`

``` purescript
newDeleteTagsRequest :: ConfigurationIdList -> DeleteTagsRequest
```

Constructs DeleteTagsRequest from required parameters

#### `newDeleteTagsRequest'`

``` purescript
newDeleteTagsRequest' :: ConfigurationIdList -> ({ configurationIds :: ConfigurationIdList, tags :: NullOrUndefined (TagSet) } -> { configurationIds :: ConfigurationIdList, tags :: NullOrUndefined (TagSet) }) -> DeleteTagsRequest
```

Constructs DeleteTagsRequest's fields from required parameters

#### `DeleteTagsResponse`

``` purescript
newtype DeleteTagsResponse
  = DeleteTagsResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteTagsResponse _
Generic DeleteTagsResponse _
Show DeleteTagsResponse
Decode DeleteTagsResponse
Encode DeleteTagsResponse
```

#### `DescribeAgentsRequest`

``` purescript
newtype DescribeAgentsRequest
  = DescribeAgentsRequest { agentIds :: NullOrUndefined (AgentIds), filters :: NullOrUndefined (Filters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeAgentsRequest _
Generic DescribeAgentsRequest _
Show DescribeAgentsRequest
Decode DescribeAgentsRequest
Encode DescribeAgentsRequest
```

#### `newDescribeAgentsRequest`

``` purescript
newDescribeAgentsRequest :: DescribeAgentsRequest
```

Constructs DescribeAgentsRequest from required parameters

#### `newDescribeAgentsRequest'`

``` purescript
newDescribeAgentsRequest' :: ({ agentIds :: NullOrUndefined (AgentIds), filters :: NullOrUndefined (Filters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) } -> { agentIds :: NullOrUndefined (AgentIds), filters :: NullOrUndefined (Filters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) }) -> DescribeAgentsRequest
```

Constructs DescribeAgentsRequest's fields from required parameters

#### `DescribeAgentsResponse`

``` purescript
newtype DescribeAgentsResponse
  = DescribeAgentsResponse { agentsInfo :: NullOrUndefined (AgentsInfo), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeAgentsResponse _
Generic DescribeAgentsResponse _
Show DescribeAgentsResponse
Decode DescribeAgentsResponse
Encode DescribeAgentsResponse
```

#### `newDescribeAgentsResponse`

``` purescript
newDescribeAgentsResponse :: DescribeAgentsResponse
```

Constructs DescribeAgentsResponse from required parameters

#### `newDescribeAgentsResponse'`

``` purescript
newDescribeAgentsResponse' :: ({ agentsInfo :: NullOrUndefined (AgentsInfo), nextToken :: NullOrUndefined (NextToken) } -> { agentsInfo :: NullOrUndefined (AgentsInfo), nextToken :: NullOrUndefined (NextToken) }) -> DescribeAgentsResponse
```

Constructs DescribeAgentsResponse's fields from required parameters

#### `DescribeConfigurationsAttribute`

``` purescript
newtype DescribeConfigurationsAttribute
  = DescribeConfigurationsAttribute (StrMap String)
```

##### Instances
``` purescript
Newtype DescribeConfigurationsAttribute _
Generic DescribeConfigurationsAttribute _
Show DescribeConfigurationsAttribute
Decode DescribeConfigurationsAttribute
Encode DescribeConfigurationsAttribute
```

#### `DescribeConfigurationsAttributes`

``` purescript
newtype DescribeConfigurationsAttributes
  = DescribeConfigurationsAttributes (Array DescribeConfigurationsAttribute)
```

##### Instances
``` purescript
Newtype DescribeConfigurationsAttributes _
Generic DescribeConfigurationsAttributes _
Show DescribeConfigurationsAttributes
Decode DescribeConfigurationsAttributes
Encode DescribeConfigurationsAttributes
```

#### `DescribeConfigurationsRequest`

``` purescript
newtype DescribeConfigurationsRequest
  = DescribeConfigurationsRequest { configurationIds :: ConfigurationIdList }
```

##### Instances
``` purescript
Newtype DescribeConfigurationsRequest _
Generic DescribeConfigurationsRequest _
Show DescribeConfigurationsRequest
Decode DescribeConfigurationsRequest
Encode DescribeConfigurationsRequest
```

#### `newDescribeConfigurationsRequest`

``` purescript
newDescribeConfigurationsRequest :: ConfigurationIdList -> DescribeConfigurationsRequest
```

Constructs DescribeConfigurationsRequest from required parameters

#### `newDescribeConfigurationsRequest'`

``` purescript
newDescribeConfigurationsRequest' :: ConfigurationIdList -> ({ configurationIds :: ConfigurationIdList } -> { configurationIds :: ConfigurationIdList }) -> DescribeConfigurationsRequest
```

Constructs DescribeConfigurationsRequest's fields from required parameters

#### `DescribeConfigurationsResponse`

``` purescript
newtype DescribeConfigurationsResponse
  = DescribeConfigurationsResponse { configurations :: NullOrUndefined (DescribeConfigurationsAttributes) }
```

##### Instances
``` purescript
Newtype DescribeConfigurationsResponse _
Generic DescribeConfigurationsResponse _
Show DescribeConfigurationsResponse
Decode DescribeConfigurationsResponse
Encode DescribeConfigurationsResponse
```

#### `newDescribeConfigurationsResponse`

``` purescript
newDescribeConfigurationsResponse :: DescribeConfigurationsResponse
```

Constructs DescribeConfigurationsResponse from required parameters

#### `newDescribeConfigurationsResponse'`

``` purescript
newDescribeConfigurationsResponse' :: ({ configurations :: NullOrUndefined (DescribeConfigurationsAttributes) } -> { configurations :: NullOrUndefined (DescribeConfigurationsAttributes) }) -> DescribeConfigurationsResponse
```

Constructs DescribeConfigurationsResponse's fields from required parameters

#### `DescribeExportConfigurationsRequest`

``` purescript
newtype DescribeExportConfigurationsRequest
  = DescribeExportConfigurationsRequest { exportIds :: NullOrUndefined (ExportIds), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeExportConfigurationsRequest _
Generic DescribeExportConfigurationsRequest _
Show DescribeExportConfigurationsRequest
Decode DescribeExportConfigurationsRequest
Encode DescribeExportConfigurationsRequest
```

#### `newDescribeExportConfigurationsRequest`

``` purescript
newDescribeExportConfigurationsRequest :: DescribeExportConfigurationsRequest
```

Constructs DescribeExportConfigurationsRequest from required parameters

#### `newDescribeExportConfigurationsRequest'`

``` purescript
newDescribeExportConfigurationsRequest' :: ({ exportIds :: NullOrUndefined (ExportIds), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) } -> { exportIds :: NullOrUndefined (ExportIds), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) }) -> DescribeExportConfigurationsRequest
```

Constructs DescribeExportConfigurationsRequest's fields from required parameters

#### `DescribeExportConfigurationsResponse`

``` purescript
newtype DescribeExportConfigurationsResponse
  = DescribeExportConfigurationsResponse { exportsInfo :: NullOrUndefined (ExportsInfo), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeExportConfigurationsResponse _
Generic DescribeExportConfigurationsResponse _
Show DescribeExportConfigurationsResponse
Decode DescribeExportConfigurationsResponse
Encode DescribeExportConfigurationsResponse
```

#### `newDescribeExportConfigurationsResponse`

``` purescript
newDescribeExportConfigurationsResponse :: DescribeExportConfigurationsResponse
```

Constructs DescribeExportConfigurationsResponse from required parameters

#### `newDescribeExportConfigurationsResponse'`

``` purescript
newDescribeExportConfigurationsResponse' :: ({ exportsInfo :: NullOrUndefined (ExportsInfo), nextToken :: NullOrUndefined (NextToken) } -> { exportsInfo :: NullOrUndefined (ExportsInfo), nextToken :: NullOrUndefined (NextToken) }) -> DescribeExportConfigurationsResponse
```

Constructs DescribeExportConfigurationsResponse's fields from required parameters

#### `DescribeExportTasksRequest`

``` purescript
newtype DescribeExportTasksRequest
  = DescribeExportTasksRequest { exportIds :: NullOrUndefined (ExportIds), filters :: NullOrUndefined (ExportFilters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeExportTasksRequest _
Generic DescribeExportTasksRequest _
Show DescribeExportTasksRequest
Decode DescribeExportTasksRequest
Encode DescribeExportTasksRequest
```

#### `newDescribeExportTasksRequest`

``` purescript
newDescribeExportTasksRequest :: DescribeExportTasksRequest
```

Constructs DescribeExportTasksRequest from required parameters

#### `newDescribeExportTasksRequest'`

``` purescript
newDescribeExportTasksRequest' :: ({ exportIds :: NullOrUndefined (ExportIds), filters :: NullOrUndefined (ExportFilters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) } -> { exportIds :: NullOrUndefined (ExportIds), filters :: NullOrUndefined (ExportFilters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) }) -> DescribeExportTasksRequest
```

Constructs DescribeExportTasksRequest's fields from required parameters

#### `DescribeExportTasksResponse`

``` purescript
newtype DescribeExportTasksResponse
  = DescribeExportTasksResponse { exportsInfo :: NullOrUndefined (ExportsInfo), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeExportTasksResponse _
Generic DescribeExportTasksResponse _
Show DescribeExportTasksResponse
Decode DescribeExportTasksResponse
Encode DescribeExportTasksResponse
```

#### `newDescribeExportTasksResponse`

``` purescript
newDescribeExportTasksResponse :: DescribeExportTasksResponse
```

Constructs DescribeExportTasksResponse from required parameters

#### `newDescribeExportTasksResponse'`

``` purescript
newDescribeExportTasksResponse' :: ({ exportsInfo :: NullOrUndefined (ExportsInfo), nextToken :: NullOrUndefined (NextToken) } -> { exportsInfo :: NullOrUndefined (ExportsInfo), nextToken :: NullOrUndefined (NextToken) }) -> DescribeExportTasksResponse
```

Constructs DescribeExportTasksResponse's fields from required parameters

#### `DescribeTagsRequest`

``` purescript
newtype DescribeTagsRequest
  = DescribeTagsRequest { filters :: NullOrUndefined (TagFilters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeTagsRequest _
Generic DescribeTagsRequest _
Show DescribeTagsRequest
Decode DescribeTagsRequest
Encode DescribeTagsRequest
```

#### `newDescribeTagsRequest`

``` purescript
newDescribeTagsRequest :: DescribeTagsRequest
```

Constructs DescribeTagsRequest from required parameters

#### `newDescribeTagsRequest'`

``` purescript
newDescribeTagsRequest' :: ({ filters :: NullOrUndefined (TagFilters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) } -> { filters :: NullOrUndefined (TagFilters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken) }) -> DescribeTagsRequest
```

Constructs DescribeTagsRequest's fields from required parameters

#### `DescribeTagsResponse`

``` purescript
newtype DescribeTagsResponse
  = DescribeTagsResponse { tags :: NullOrUndefined (ConfigurationTagSet), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeTagsResponse _
Generic DescribeTagsResponse _
Show DescribeTagsResponse
Decode DescribeTagsResponse
Encode DescribeTagsResponse
```

#### `newDescribeTagsResponse`

``` purescript
newDescribeTagsResponse :: DescribeTagsResponse
```

Constructs DescribeTagsResponse from required parameters

#### `newDescribeTagsResponse'`

``` purescript
newDescribeTagsResponse' :: ({ tags :: NullOrUndefined (ConfigurationTagSet), nextToken :: NullOrUndefined (NextToken) } -> { tags :: NullOrUndefined (ConfigurationTagSet), nextToken :: NullOrUndefined (NextToken) }) -> DescribeTagsResponse
```

Constructs DescribeTagsResponse's fields from required parameters

#### `DisassociateConfigurationItemsFromApplicationRequest`

``` purescript
newtype DisassociateConfigurationItemsFromApplicationRequest
  = DisassociateConfigurationItemsFromApplicationRequest { applicationConfigurationId :: ApplicationId, configurationIds :: ConfigurationIdList }
```

##### Instances
``` purescript
Newtype DisassociateConfigurationItemsFromApplicationRequest _
Generic DisassociateConfigurationItemsFromApplicationRequest _
Show DisassociateConfigurationItemsFromApplicationRequest
Decode DisassociateConfigurationItemsFromApplicationRequest
Encode DisassociateConfigurationItemsFromApplicationRequest
```

#### `newDisassociateConfigurationItemsFromApplicationRequest`

``` purescript
newDisassociateConfigurationItemsFromApplicationRequest :: ApplicationId -> ConfigurationIdList -> DisassociateConfigurationItemsFromApplicationRequest
```

Constructs DisassociateConfigurationItemsFromApplicationRequest from required parameters

#### `newDisassociateConfigurationItemsFromApplicationRequest'`

``` purescript
newDisassociateConfigurationItemsFromApplicationRequest' :: ApplicationId -> ConfigurationIdList -> ({ applicationConfigurationId :: ApplicationId, configurationIds :: ConfigurationIdList } -> { applicationConfigurationId :: ApplicationId, configurationIds :: ConfigurationIdList }) -> DisassociateConfigurationItemsFromApplicationRequest
```

Constructs DisassociateConfigurationItemsFromApplicationRequest's fields from required parameters

#### `DisassociateConfigurationItemsFromApplicationResponse`

``` purescript
newtype DisassociateConfigurationItemsFromApplicationResponse
  = DisassociateConfigurationItemsFromApplicationResponse NoArguments
```

##### Instances
``` purescript
Newtype DisassociateConfigurationItemsFromApplicationResponse _
Generic DisassociateConfigurationItemsFromApplicationResponse _
Show DisassociateConfigurationItemsFromApplicationResponse
Decode DisassociateConfigurationItemsFromApplicationResponse
Encode DisassociateConfigurationItemsFromApplicationResponse
```

#### `ExportConfigurationsResponse`

``` purescript
newtype ExportConfigurationsResponse
  = ExportConfigurationsResponse { exportId :: NullOrUndefined (ConfigurationsExportId) }
```

##### Instances
``` purescript
Newtype ExportConfigurationsResponse _
Generic ExportConfigurationsResponse _
Show ExportConfigurationsResponse
Decode ExportConfigurationsResponse
Encode ExportConfigurationsResponse
```

#### `newExportConfigurationsResponse`

``` purescript
newExportConfigurationsResponse :: ExportConfigurationsResponse
```

Constructs ExportConfigurationsResponse from required parameters

#### `newExportConfigurationsResponse'`

``` purescript
newExportConfigurationsResponse' :: ({ exportId :: NullOrUndefined (ConfigurationsExportId) } -> { exportId :: NullOrUndefined (ConfigurationsExportId) }) -> ExportConfigurationsResponse
```

Constructs ExportConfigurationsResponse's fields from required parameters

#### `ExportDataFormat`

``` purescript
newtype ExportDataFormat
  = ExportDataFormat String
```

##### Instances
``` purescript
Newtype ExportDataFormat _
Generic ExportDataFormat _
Show ExportDataFormat
Decode ExportDataFormat
Encode ExportDataFormat
```

#### `ExportDataFormats`

``` purescript
newtype ExportDataFormats
  = ExportDataFormats (Array ExportDataFormat)
```

##### Instances
``` purescript
Newtype ExportDataFormats _
Generic ExportDataFormats _
Show ExportDataFormats
Decode ExportDataFormats
Encode ExportDataFormats
```

#### `ExportFilter`

``` purescript
newtype ExportFilter
  = ExportFilter { name :: FilterName, values :: FilterValues, condition :: Condition }
```

<p>Used to select which agent's data is to be exported. A single agent ID may be selected for export using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html">StartExportTask</a> action.</p>

##### Instances
``` purescript
Newtype ExportFilter _
Generic ExportFilter _
Show ExportFilter
Decode ExportFilter
Encode ExportFilter
```

#### `newExportFilter`

``` purescript
newExportFilter :: Condition -> FilterName -> FilterValues -> ExportFilter
```

Constructs ExportFilter from required parameters

#### `newExportFilter'`

``` purescript
newExportFilter' :: Condition -> FilterName -> FilterValues -> ({ name :: FilterName, values :: FilterValues, condition :: Condition } -> { name :: FilterName, values :: FilterValues, condition :: Condition }) -> ExportFilter
```

Constructs ExportFilter's fields from required parameters

#### `ExportFilters`

``` purescript
newtype ExportFilters
  = ExportFilters (Array ExportFilter)
```

##### Instances
``` purescript
Newtype ExportFilters _
Generic ExportFilters _
Show ExportFilters
Decode ExportFilters
Encode ExportFilters
```

#### `ExportIds`

``` purescript
newtype ExportIds
  = ExportIds (Array ConfigurationsExportId)
```

##### Instances
``` purescript
Newtype ExportIds _
Generic ExportIds _
Show ExportIds
Decode ExportIds
Encode ExportIds
```

#### `ExportInfo`

``` purescript
newtype ExportInfo
  = ExportInfo { exportId :: ConfigurationsExportId, exportStatus :: ExportStatus, statusMessage :: ExportStatusMessage, configurationsDownloadUrl :: NullOrUndefined (ConfigurationsDownloadUrl), exportRequestTime :: ExportRequestTime, isTruncated :: NullOrUndefined (Boolean), requestedStartTime :: NullOrUndefined (TimeStamp), requestedEndTime :: NullOrUndefined (TimeStamp) }
```

<p>Information regarding the export status of discovered data. The value is an array of objects.</p>

##### Instances
``` purescript
Newtype ExportInfo _
Generic ExportInfo _
Show ExportInfo
Decode ExportInfo
Encode ExportInfo
```

#### `newExportInfo`

``` purescript
newExportInfo :: ConfigurationsExportId -> ExportRequestTime -> ExportStatus -> ExportStatusMessage -> ExportInfo
```

Constructs ExportInfo from required parameters

#### `newExportInfo'`

``` purescript
newExportInfo' :: ConfigurationsExportId -> ExportRequestTime -> ExportStatus -> ExportStatusMessage -> ({ exportId :: ConfigurationsExportId, exportStatus :: ExportStatus, statusMessage :: ExportStatusMessage, configurationsDownloadUrl :: NullOrUndefined (ConfigurationsDownloadUrl), exportRequestTime :: ExportRequestTime, isTruncated :: NullOrUndefined (Boolean), requestedStartTime :: NullOrUndefined (TimeStamp), requestedEndTime :: NullOrUndefined (TimeStamp) } -> { exportId :: ConfigurationsExportId, exportStatus :: ExportStatus, statusMessage :: ExportStatusMessage, configurationsDownloadUrl :: NullOrUndefined (ConfigurationsDownloadUrl), exportRequestTime :: ExportRequestTime, isTruncated :: NullOrUndefined (Boolean), requestedStartTime :: NullOrUndefined (TimeStamp), requestedEndTime :: NullOrUndefined (TimeStamp) }) -> ExportInfo
```

Constructs ExportInfo's fields from required parameters

#### `ExportRequestTime`

``` purescript
newtype ExportRequestTime
  = ExportRequestTime Timestamp
```

##### Instances
``` purescript
Newtype ExportRequestTime _
Generic ExportRequestTime _
Show ExportRequestTime
Decode ExportRequestTime
Encode ExportRequestTime
```

#### `ExportStatus`

``` purescript
newtype ExportStatus
  = ExportStatus String
```

##### Instances
``` purescript
Newtype ExportStatus _
Generic ExportStatus _
Show ExportStatus
Decode ExportStatus
Encode ExportStatus
```

#### `ExportStatusMessage`

``` purescript
newtype ExportStatusMessage
  = ExportStatusMessage String
```

##### Instances
``` purescript
Newtype ExportStatusMessage _
Generic ExportStatusMessage _
Show ExportStatusMessage
Decode ExportStatusMessage
Encode ExportStatusMessage
```

#### `ExportsInfo`

``` purescript
newtype ExportsInfo
  = ExportsInfo (Array ExportInfo)
```

##### Instances
``` purescript
Newtype ExportsInfo _
Generic ExportsInfo _
Show ExportsInfo
Decode ExportsInfo
Encode ExportsInfo
```

#### `Filter`

``` purescript
newtype Filter
  = Filter { name :: String, values :: FilterValues, condition :: Condition }
```

<p>A filter that can use conditional operators.</p> <p>For more information about filters, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html">Querying Discovered Configuration Items</a>. </p>

##### Instances
``` purescript
Newtype Filter _
Generic Filter _
Show Filter
Decode Filter
Encode Filter
```

#### `newFilter`

``` purescript
newFilter :: Condition -> String -> FilterValues -> Filter
```

Constructs Filter from required parameters

#### `newFilter'`

``` purescript
newFilter' :: Condition -> String -> FilterValues -> ({ name :: String, values :: FilterValues, condition :: Condition } -> { name :: String, values :: FilterValues, condition :: Condition }) -> Filter
```

Constructs Filter's fields from required parameters

#### `FilterName`

``` purescript
newtype FilterName
  = FilterName String
```

##### Instances
``` purescript
Newtype FilterName _
Generic FilterName _
Show FilterName
Decode FilterName
Encode FilterName
```

#### `FilterValue`

``` purescript
newtype FilterValue
  = FilterValue String
```

##### Instances
``` purescript
Newtype FilterValue _
Generic FilterValue _
Show FilterValue
Decode FilterValue
Encode FilterValue
```

#### `FilterValues`

``` purescript
newtype FilterValues
  = FilterValues (Array FilterValue)
```

##### Instances
``` purescript
Newtype FilterValues _
Generic FilterValues _
Show FilterValues
Decode FilterValues
Encode FilterValues
```

#### `Filters`

``` purescript
newtype Filters
  = Filters (Array Filter)
```

##### Instances
``` purescript
Newtype Filters _
Generic Filters _
Show Filters
Decode Filters
Encode Filters
```

#### `GetDiscoverySummaryRequest`

``` purescript
newtype GetDiscoverySummaryRequest
  = GetDiscoverySummaryRequest NoArguments
```

##### Instances
``` purescript
Newtype GetDiscoverySummaryRequest _
Generic GetDiscoverySummaryRequest _
Show GetDiscoverySummaryRequest
Decode GetDiscoverySummaryRequest
Encode GetDiscoverySummaryRequest
```

#### `GetDiscoverySummaryResponse`

``` purescript
newtype GetDiscoverySummaryResponse
  = GetDiscoverySummaryResponse { servers :: NullOrUndefined (Number), applications :: NullOrUndefined (Number), serversMappedToApplications :: NullOrUndefined (Number), serversMappedtoTags :: NullOrUndefined (Number), agentSummary :: NullOrUndefined (CustomerAgentInfo), connectorSummary :: NullOrUndefined (CustomerConnectorInfo) }
```

##### Instances
``` purescript
Newtype GetDiscoverySummaryResponse _
Generic GetDiscoverySummaryResponse _
Show GetDiscoverySummaryResponse
Decode GetDiscoverySummaryResponse
Encode GetDiscoverySummaryResponse
```

#### `newGetDiscoverySummaryResponse`

``` purescript
newGetDiscoverySummaryResponse :: GetDiscoverySummaryResponse
```

Constructs GetDiscoverySummaryResponse from required parameters

#### `newGetDiscoverySummaryResponse'`

``` purescript
newGetDiscoverySummaryResponse' :: ({ servers :: NullOrUndefined (Number), applications :: NullOrUndefined (Number), serversMappedToApplications :: NullOrUndefined (Number), serversMappedtoTags :: NullOrUndefined (Number), agentSummary :: NullOrUndefined (CustomerAgentInfo), connectorSummary :: NullOrUndefined (CustomerConnectorInfo) } -> { servers :: NullOrUndefined (Number), applications :: NullOrUndefined (Number), serversMappedToApplications :: NullOrUndefined (Number), serversMappedtoTags :: NullOrUndefined (Number), agentSummary :: NullOrUndefined (CustomerAgentInfo), connectorSummary :: NullOrUndefined (CustomerConnectorInfo) }) -> GetDiscoverySummaryResponse
```

Constructs GetDiscoverySummaryResponse's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: NullOrUndefined (Message) }
```

<p>One or more parameters are not valid. Verify the parameters and try again.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ({ message :: NullOrUndefined (Message) } -> { message :: NullOrUndefined (Message) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `InvalidParameterValueException`

``` purescript
newtype InvalidParameterValueException
  = InvalidParameterValueException { message :: NullOrUndefined (Message) }
```

<p>The value of one or more parameters are either invalid or out of range. Verify the parameter values and try again.</p>

##### Instances
``` purescript
Newtype InvalidParameterValueException _
Generic InvalidParameterValueException _
Show InvalidParameterValueException
Decode InvalidParameterValueException
Encode InvalidParameterValueException
```

#### `newInvalidParameterValueException`

``` purescript
newInvalidParameterValueException :: InvalidParameterValueException
```

Constructs InvalidParameterValueException from required parameters

#### `newInvalidParameterValueException'`

``` purescript
newInvalidParameterValueException' :: ({ message :: NullOrUndefined (Message) } -> { message :: NullOrUndefined (Message) }) -> InvalidParameterValueException
```

Constructs InvalidParameterValueException's fields from required parameters

#### `ListConfigurationsRequest`

``` purescript
newtype ListConfigurationsRequest
  = ListConfigurationsRequest { configurationType :: ConfigurationItemType, filters :: NullOrUndefined (Filters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken), orderBy :: NullOrUndefined (OrderByList) }
```

##### Instances
``` purescript
Newtype ListConfigurationsRequest _
Generic ListConfigurationsRequest _
Show ListConfigurationsRequest
Decode ListConfigurationsRequest
Encode ListConfigurationsRequest
```

#### `newListConfigurationsRequest`

``` purescript
newListConfigurationsRequest :: ConfigurationItemType -> ListConfigurationsRequest
```

Constructs ListConfigurationsRequest from required parameters

#### `newListConfigurationsRequest'`

``` purescript
newListConfigurationsRequest' :: ConfigurationItemType -> ({ configurationType :: ConfigurationItemType, filters :: NullOrUndefined (Filters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken), orderBy :: NullOrUndefined (OrderByList) } -> { configurationType :: ConfigurationItemType, filters :: NullOrUndefined (Filters), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (NextToken), orderBy :: NullOrUndefined (OrderByList) }) -> ListConfigurationsRequest
```

Constructs ListConfigurationsRequest's fields from required parameters

#### `ListConfigurationsResponse`

``` purescript
newtype ListConfigurationsResponse
  = ListConfigurationsResponse { configurations :: NullOrUndefined (Configurations), nextToken :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListConfigurationsResponse _
Generic ListConfigurationsResponse _
Show ListConfigurationsResponse
Decode ListConfigurationsResponse
Encode ListConfigurationsResponse
```

#### `newListConfigurationsResponse`

``` purescript
newListConfigurationsResponse :: ListConfigurationsResponse
```

Constructs ListConfigurationsResponse from required parameters

#### `newListConfigurationsResponse'`

``` purescript
newListConfigurationsResponse' :: ({ configurations :: NullOrUndefined (Configurations), nextToken :: NullOrUndefined (NextToken) } -> { configurations :: NullOrUndefined (Configurations), nextToken :: NullOrUndefined (NextToken) }) -> ListConfigurationsResponse
```

Constructs ListConfigurationsResponse's fields from required parameters

#### `ListServerNeighborsRequest`

``` purescript
newtype ListServerNeighborsRequest
  = ListServerNeighborsRequest { configurationId :: ConfigurationId, portInformationNeeded :: NullOrUndefined (Boolean), neighborConfigurationIds :: NullOrUndefined (ConfigurationIdList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListServerNeighborsRequest _
Generic ListServerNeighborsRequest _
Show ListServerNeighborsRequest
Decode ListServerNeighborsRequest
Encode ListServerNeighborsRequest
```

#### `newListServerNeighborsRequest`

``` purescript
newListServerNeighborsRequest :: ConfigurationId -> ListServerNeighborsRequest
```

Constructs ListServerNeighborsRequest from required parameters

#### `newListServerNeighborsRequest'`

``` purescript
newListServerNeighborsRequest' :: ConfigurationId -> ({ configurationId :: ConfigurationId, portInformationNeeded :: NullOrUndefined (Boolean), neighborConfigurationIds :: NullOrUndefined (ConfigurationIdList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) } -> { configurationId :: ConfigurationId, portInformationNeeded :: NullOrUndefined (Boolean), neighborConfigurationIds :: NullOrUndefined (ConfigurationIdList), maxResults :: NullOrUndefined (Int), nextToken :: NullOrUndefined (String) }) -> ListServerNeighborsRequest
```

Constructs ListServerNeighborsRequest's fields from required parameters

#### `ListServerNeighborsResponse`

``` purescript
newtype ListServerNeighborsResponse
  = ListServerNeighborsResponse { neighbors :: NeighborDetailsList, nextToken :: NullOrUndefined (String), knownDependencyCount :: NullOrUndefined (Number) }
```

##### Instances
``` purescript
Newtype ListServerNeighborsResponse _
Generic ListServerNeighborsResponse _
Show ListServerNeighborsResponse
Decode ListServerNeighborsResponse
Encode ListServerNeighborsResponse
```

#### `newListServerNeighborsResponse`

``` purescript
newListServerNeighborsResponse :: NeighborDetailsList -> ListServerNeighborsResponse
```

Constructs ListServerNeighborsResponse from required parameters

#### `newListServerNeighborsResponse'`

``` purescript
newListServerNeighborsResponse' :: NeighborDetailsList -> ({ neighbors :: NeighborDetailsList, nextToken :: NullOrUndefined (String), knownDependencyCount :: NullOrUndefined (Number) } -> { neighbors :: NeighborDetailsList, nextToken :: NullOrUndefined (String), knownDependencyCount :: NullOrUndefined (Number) }) -> ListServerNeighborsResponse
```

Constructs ListServerNeighborsResponse's fields from required parameters

#### `Message`

``` purescript
newtype Message
  = Message String
```

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `NeighborConnectionDetail`

``` purescript
newtype NeighborConnectionDetail
  = NeighborConnectionDetail { sourceServerId :: ConfigurationId, destinationServerId :: ConfigurationId, destinationPort :: NullOrUndefined (BoxedInteger), transportProtocol :: NullOrUndefined (String), connectionsCount :: Number }
```

<p>Details about neighboring servers.</p>

##### Instances
``` purescript
Newtype NeighborConnectionDetail _
Generic NeighborConnectionDetail _
Show NeighborConnectionDetail
Decode NeighborConnectionDetail
Encode NeighborConnectionDetail
```

#### `newNeighborConnectionDetail`

``` purescript
newNeighborConnectionDetail :: Number -> ConfigurationId -> ConfigurationId -> NeighborConnectionDetail
```

Constructs NeighborConnectionDetail from required parameters

#### `newNeighborConnectionDetail'`

``` purescript
newNeighborConnectionDetail' :: Number -> ConfigurationId -> ConfigurationId -> ({ sourceServerId :: ConfigurationId, destinationServerId :: ConfigurationId, destinationPort :: NullOrUndefined (BoxedInteger), transportProtocol :: NullOrUndefined (String), connectionsCount :: Number } -> { sourceServerId :: ConfigurationId, destinationServerId :: ConfigurationId, destinationPort :: NullOrUndefined (BoxedInteger), transportProtocol :: NullOrUndefined (String), connectionsCount :: Number }) -> NeighborConnectionDetail
```

Constructs NeighborConnectionDetail's fields from required parameters

#### `NeighborDetailsList`

``` purescript
newtype NeighborDetailsList
  = NeighborDetailsList (Array NeighborConnectionDetail)
```

##### Instances
``` purescript
Newtype NeighborDetailsList _
Generic NeighborDetailsList _
Show NeighborDetailsList
Decode NeighborDetailsList
Encode NeighborDetailsList
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `OperationNotPermittedException`

``` purescript
newtype OperationNotPermittedException
  = OperationNotPermittedException { message :: NullOrUndefined (Message) }
```

<p>This operation is not permitted.</p>

##### Instances
``` purescript
Newtype OperationNotPermittedException _
Generic OperationNotPermittedException _
Show OperationNotPermittedException
Decode OperationNotPermittedException
Encode OperationNotPermittedException
```

#### `newOperationNotPermittedException`

``` purescript
newOperationNotPermittedException :: OperationNotPermittedException
```

Constructs OperationNotPermittedException from required parameters

#### `newOperationNotPermittedException'`

``` purescript
newOperationNotPermittedException' :: ({ message :: NullOrUndefined (Message) } -> { message :: NullOrUndefined (Message) }) -> OperationNotPermittedException
```

Constructs OperationNotPermittedException's fields from required parameters

#### `OrderByElement`

``` purescript
newtype OrderByElement
  = OrderByElement { fieldName :: String, sortOrder :: NullOrUndefined (OrderString') }
```

<p>A field and direction for ordered output.</p>

##### Instances
``` purescript
Newtype OrderByElement _
Generic OrderByElement _
Show OrderByElement
Decode OrderByElement
Encode OrderByElement
```

#### `newOrderByElement`

``` purescript
newOrderByElement :: String -> OrderByElement
```

Constructs OrderByElement from required parameters

#### `newOrderByElement'`

``` purescript
newOrderByElement' :: String -> ({ fieldName :: String, sortOrder :: NullOrUndefined (OrderString') } -> { fieldName :: String, sortOrder :: NullOrUndefined (OrderString') }) -> OrderByElement
```

Constructs OrderByElement's fields from required parameters

#### `OrderByList`

``` purescript
newtype OrderByList
  = OrderByList (Array OrderByElement)
```

##### Instances
``` purescript
Newtype OrderByList _
Generic OrderByList _
Show OrderByList
Decode OrderByList
Encode OrderByList
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (Message) }
```

<p>The specified configuration ID was not located. Verify the configuration ID and try again.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (Message) } -> { message :: NullOrUndefined (Message) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ServerInternalErrorException`

``` purescript
newtype ServerInternalErrorException
  = ServerInternalErrorException { message :: NullOrUndefined (Message) }
```

<p>The server experienced an internal error. Try again.</p>

##### Instances
``` purescript
Newtype ServerInternalErrorException _
Generic ServerInternalErrorException _
Show ServerInternalErrorException
Decode ServerInternalErrorException
Encode ServerInternalErrorException
```

#### `newServerInternalErrorException`

``` purescript
newServerInternalErrorException :: ServerInternalErrorException
```

Constructs ServerInternalErrorException from required parameters

#### `newServerInternalErrorException'`

``` purescript
newServerInternalErrorException' :: ({ message :: NullOrUndefined (Message) } -> { message :: NullOrUndefined (Message) }) -> ServerInternalErrorException
```

Constructs ServerInternalErrorException's fields from required parameters

#### `StartDataCollectionByAgentIdsRequest`

``` purescript
newtype StartDataCollectionByAgentIdsRequest
  = StartDataCollectionByAgentIdsRequest { agentIds :: AgentIds }
```

##### Instances
``` purescript
Newtype StartDataCollectionByAgentIdsRequest _
Generic StartDataCollectionByAgentIdsRequest _
Show StartDataCollectionByAgentIdsRequest
Decode StartDataCollectionByAgentIdsRequest
Encode StartDataCollectionByAgentIdsRequest
```

#### `newStartDataCollectionByAgentIdsRequest`

``` purescript
newStartDataCollectionByAgentIdsRequest :: AgentIds -> StartDataCollectionByAgentIdsRequest
```

Constructs StartDataCollectionByAgentIdsRequest from required parameters

#### `newStartDataCollectionByAgentIdsRequest'`

``` purescript
newStartDataCollectionByAgentIdsRequest' :: AgentIds -> ({ agentIds :: AgentIds } -> { agentIds :: AgentIds }) -> StartDataCollectionByAgentIdsRequest
```

Constructs StartDataCollectionByAgentIdsRequest's fields from required parameters

#### `StartDataCollectionByAgentIdsResponse`

``` purescript
newtype StartDataCollectionByAgentIdsResponse
  = StartDataCollectionByAgentIdsResponse { agentsConfigurationStatus :: NullOrUndefined (AgentConfigurationStatusList) }
```

##### Instances
``` purescript
Newtype StartDataCollectionByAgentIdsResponse _
Generic StartDataCollectionByAgentIdsResponse _
Show StartDataCollectionByAgentIdsResponse
Decode StartDataCollectionByAgentIdsResponse
Encode StartDataCollectionByAgentIdsResponse
```

#### `newStartDataCollectionByAgentIdsResponse`

``` purescript
newStartDataCollectionByAgentIdsResponse :: StartDataCollectionByAgentIdsResponse
```

Constructs StartDataCollectionByAgentIdsResponse from required parameters

#### `newStartDataCollectionByAgentIdsResponse'`

``` purescript
newStartDataCollectionByAgentIdsResponse' :: ({ agentsConfigurationStatus :: NullOrUndefined (AgentConfigurationStatusList) } -> { agentsConfigurationStatus :: NullOrUndefined (AgentConfigurationStatusList) }) -> StartDataCollectionByAgentIdsResponse
```

Constructs StartDataCollectionByAgentIdsResponse's fields from required parameters

#### `StartExportTaskRequest`

``` purescript
newtype StartExportTaskRequest
  = StartExportTaskRequest { exportDataFormat :: NullOrUndefined (ExportDataFormats), filters :: NullOrUndefined (ExportFilters), startTime :: NullOrUndefined (TimeStamp), endTime :: NullOrUndefined (TimeStamp) }
```

##### Instances
``` purescript
Newtype StartExportTaskRequest _
Generic StartExportTaskRequest _
Show StartExportTaskRequest
Decode StartExportTaskRequest
Encode StartExportTaskRequest
```

#### `newStartExportTaskRequest`

``` purescript
newStartExportTaskRequest :: StartExportTaskRequest
```

Constructs StartExportTaskRequest from required parameters

#### `newStartExportTaskRequest'`

``` purescript
newStartExportTaskRequest' :: ({ exportDataFormat :: NullOrUndefined (ExportDataFormats), filters :: NullOrUndefined (ExportFilters), startTime :: NullOrUndefined (TimeStamp), endTime :: NullOrUndefined (TimeStamp) } -> { exportDataFormat :: NullOrUndefined (ExportDataFormats), filters :: NullOrUndefined (ExportFilters), startTime :: NullOrUndefined (TimeStamp), endTime :: NullOrUndefined (TimeStamp) }) -> StartExportTaskRequest
```

Constructs StartExportTaskRequest's fields from required parameters

#### `StartExportTaskResponse`

``` purescript
newtype StartExportTaskResponse
  = StartExportTaskResponse { exportId :: NullOrUndefined (ConfigurationsExportId) }
```

##### Instances
``` purescript
Newtype StartExportTaskResponse _
Generic StartExportTaskResponse _
Show StartExportTaskResponse
Decode StartExportTaskResponse
Encode StartExportTaskResponse
```

#### `newStartExportTaskResponse`

``` purescript
newStartExportTaskResponse :: StartExportTaskResponse
```

Constructs StartExportTaskResponse from required parameters

#### `newStartExportTaskResponse'`

``` purescript
newStartExportTaskResponse' :: ({ exportId :: NullOrUndefined (ConfigurationsExportId) } -> { exportId :: NullOrUndefined (ConfigurationsExportId) }) -> StartExportTaskResponse
```

Constructs StartExportTaskResponse's fields from required parameters

#### `StopDataCollectionByAgentIdsRequest`

``` purescript
newtype StopDataCollectionByAgentIdsRequest
  = StopDataCollectionByAgentIdsRequest { agentIds :: AgentIds }
```

##### Instances
``` purescript
Newtype StopDataCollectionByAgentIdsRequest _
Generic StopDataCollectionByAgentIdsRequest _
Show StopDataCollectionByAgentIdsRequest
Decode StopDataCollectionByAgentIdsRequest
Encode StopDataCollectionByAgentIdsRequest
```

#### `newStopDataCollectionByAgentIdsRequest`

``` purescript
newStopDataCollectionByAgentIdsRequest :: AgentIds -> StopDataCollectionByAgentIdsRequest
```

Constructs StopDataCollectionByAgentIdsRequest from required parameters

#### `newStopDataCollectionByAgentIdsRequest'`

``` purescript
newStopDataCollectionByAgentIdsRequest' :: AgentIds -> ({ agentIds :: AgentIds } -> { agentIds :: AgentIds }) -> StopDataCollectionByAgentIdsRequest
```

Constructs StopDataCollectionByAgentIdsRequest's fields from required parameters

#### `StopDataCollectionByAgentIdsResponse`

``` purescript
newtype StopDataCollectionByAgentIdsResponse
  = StopDataCollectionByAgentIdsResponse { agentsConfigurationStatus :: NullOrUndefined (AgentConfigurationStatusList) }
```

##### Instances
``` purescript
Newtype StopDataCollectionByAgentIdsResponse _
Generic StopDataCollectionByAgentIdsResponse _
Show StopDataCollectionByAgentIdsResponse
Decode StopDataCollectionByAgentIdsResponse
Encode StopDataCollectionByAgentIdsResponse
```

#### `newStopDataCollectionByAgentIdsResponse`

``` purescript
newStopDataCollectionByAgentIdsResponse :: StopDataCollectionByAgentIdsResponse
```

Constructs StopDataCollectionByAgentIdsResponse from required parameters

#### `newStopDataCollectionByAgentIdsResponse'`

``` purescript
newStopDataCollectionByAgentIdsResponse' :: ({ agentsConfigurationStatus :: NullOrUndefined (AgentConfigurationStatusList) } -> { agentsConfigurationStatus :: NullOrUndefined (AgentConfigurationStatusList) }) -> StopDataCollectionByAgentIdsResponse
```

Constructs StopDataCollectionByAgentIdsResponse's fields from required parameters

#### `Tag`

``` purescript
newtype Tag
  = Tag { key :: TagKey, value :: TagValue }
```

<p>Metadata that help you categorize IT assets.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKey -> TagValue -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKey -> TagValue -> ({ key :: TagKey, value :: TagValue } -> { key :: TagKey, value :: TagValue }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagFilter`

``` purescript
newtype TagFilter
  = TagFilter { name :: FilterName, values :: FilterValues }
```

<p>The tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>, <code>configurationId</code>.</p>

##### Instances
``` purescript
Newtype TagFilter _
Generic TagFilter _
Show TagFilter
Decode TagFilter
Encode TagFilter
```

#### `newTagFilter`

``` purescript
newTagFilter :: FilterName -> FilterValues -> TagFilter
```

Constructs TagFilter from required parameters

#### `newTagFilter'`

``` purescript
newTagFilter' :: FilterName -> FilterValues -> ({ name :: FilterName, values :: FilterValues } -> { name :: FilterName, values :: FilterValues }) -> TagFilter
```

Constructs TagFilter's fields from required parameters

#### `TagFilters`

``` purescript
newtype TagFilters
  = TagFilters (Array TagFilter)
```

##### Instances
``` purescript
Newtype TagFilters _
Generic TagFilters _
Show TagFilters
Decode TagFilters
Encode TagFilters
```

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagSet`

``` purescript
newtype TagSet
  = TagSet (Array Tag)
```

##### Instances
``` purescript
Newtype TagSet _
Generic TagSet _
Show TagSet
Decode TagSet
Encode TagSet
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `TimeStamp`

``` purescript
newtype TimeStamp
  = TimeStamp Timestamp
```

##### Instances
``` purescript
Newtype TimeStamp _
Generic TimeStamp _
Show TimeStamp
Decode TimeStamp
Encode TimeStamp
```

#### `UpdateApplicationRequest`

``` purescript
newtype UpdateApplicationRequest
  = UpdateApplicationRequest { configurationId :: ApplicationId, name :: NullOrUndefined (String), description :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype UpdateApplicationRequest _
Generic UpdateApplicationRequest _
Show UpdateApplicationRequest
Decode UpdateApplicationRequest
Encode UpdateApplicationRequest
```

#### `newUpdateApplicationRequest`

``` purescript
newUpdateApplicationRequest :: ApplicationId -> UpdateApplicationRequest
```

Constructs UpdateApplicationRequest from required parameters

#### `newUpdateApplicationRequest'`

``` purescript
newUpdateApplicationRequest' :: ApplicationId -> ({ configurationId :: ApplicationId, name :: NullOrUndefined (String), description :: NullOrUndefined (String) } -> { configurationId :: ApplicationId, name :: NullOrUndefined (String), description :: NullOrUndefined (String) }) -> UpdateApplicationRequest
```

Constructs UpdateApplicationRequest's fields from required parameters

#### `UpdateApplicationResponse`

``` purescript
newtype UpdateApplicationResponse
  = UpdateApplicationResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateApplicationResponse _
Generic UpdateApplicationResponse _
Show UpdateApplicationResponse
Decode UpdateApplicationResponse
Encode UpdateApplicationResponse
```

#### `OrderString'`

``` purescript
newtype OrderString'
  = OrderString' String
```

##### Instances
``` purescript
Newtype OrderString' _
Generic OrderString' _
Show OrderString'
Decode OrderString'
Encode OrderString'
```


