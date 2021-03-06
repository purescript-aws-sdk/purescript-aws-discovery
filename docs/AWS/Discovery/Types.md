## Module AWS.Discovery.Types

#### `options`

``` purescript
options :: Options
```

#### `AgentConfigurationStatus`

``` purescript
newtype AgentConfigurationStatus
  = AgentConfigurationStatus { agentId :: Maybe (String), operationSucceeded :: Maybe (Boolean), description :: Maybe (String) }
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
newAgentConfigurationStatus' :: ({ agentId :: Maybe (String), operationSucceeded :: Maybe (Boolean), description :: Maybe (String) } -> { agentId :: Maybe (String), operationSucceeded :: Maybe (Boolean), description :: Maybe (String) }) -> AgentConfigurationStatus
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
  = AgentInfo { agentId :: Maybe (AgentId), hostName :: Maybe (String), agentNetworkInfoList :: Maybe (AgentNetworkInfoList), connectorId :: Maybe (String), version :: Maybe (String), health :: Maybe (AgentStatus), lastHealthPingTime :: Maybe (String), collectionStatus :: Maybe (String), agentType :: Maybe (String), registeredTime :: Maybe (String) }
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
newAgentInfo' :: ({ agentId :: Maybe (AgentId), hostName :: Maybe (String), agentNetworkInfoList :: Maybe (AgentNetworkInfoList), connectorId :: Maybe (String), version :: Maybe (String), health :: Maybe (AgentStatus), lastHealthPingTime :: Maybe (String), collectionStatus :: Maybe (String), agentType :: Maybe (String), registeredTime :: Maybe (String) } -> { agentId :: Maybe (AgentId), hostName :: Maybe (String), agentNetworkInfoList :: Maybe (AgentNetworkInfoList), connectorId :: Maybe (String), version :: Maybe (String), health :: Maybe (AgentStatus), lastHealthPingTime :: Maybe (String), collectionStatus :: Maybe (String), agentType :: Maybe (String), registeredTime :: Maybe (String) }) -> AgentInfo
```

Constructs AgentInfo's fields from required parameters

#### `AgentNetworkInfo`

``` purescript
newtype AgentNetworkInfo
  = AgentNetworkInfo { ipAddress :: Maybe (String), macAddress :: Maybe (String) }
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
newAgentNetworkInfo' :: ({ ipAddress :: Maybe (String), macAddress :: Maybe (String) } -> { ipAddress :: Maybe (String), macAddress :: Maybe (String) }) -> AgentNetworkInfo
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
  = AuthorizationErrorException { message :: Maybe (Message) }
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
newAuthorizationErrorException' :: ({ message :: Maybe (Message) } -> { message :: Maybe (Message) }) -> AuthorizationErrorException
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
  = ConfigurationTag { configurationType :: Maybe (ConfigurationItemType), configurationId :: Maybe (ConfigurationId), key :: Maybe (TagKey), value :: Maybe (TagValue), timeOfCreation :: Maybe (TimeStamp) }
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
newConfigurationTag' :: ({ configurationType :: Maybe (ConfigurationItemType), configurationId :: Maybe (ConfigurationId), key :: Maybe (TagKey), value :: Maybe (TagValue), timeOfCreation :: Maybe (TimeStamp) } -> { configurationType :: Maybe (ConfigurationItemType), configurationId :: Maybe (ConfigurationId), key :: Maybe (TagKey), value :: Maybe (TagValue), timeOfCreation :: Maybe (TimeStamp) }) -> ConfigurationTag
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
  = CreateApplicationRequest { name :: String, description :: Maybe (String) }
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
newCreateApplicationRequest' :: String -> ({ name :: String, description :: Maybe (String) } -> { name :: String, description :: Maybe (String) }) -> CreateApplicationRequest
```

Constructs CreateApplicationRequest's fields from required parameters

#### `CreateApplicationResponse`

``` purescript
newtype CreateApplicationResponse
  = CreateApplicationResponse { configurationId :: Maybe (String) }
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
newCreateApplicationResponse' :: ({ configurationId :: Maybe (String) } -> { configurationId :: Maybe (String) }) -> CreateApplicationResponse
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
  = DeleteTagsRequest { configurationIds :: ConfigurationIdList, tags :: Maybe (TagSet) }
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
newDeleteTagsRequest' :: ConfigurationIdList -> ({ configurationIds :: ConfigurationIdList, tags :: Maybe (TagSet) } -> { configurationIds :: ConfigurationIdList, tags :: Maybe (TagSet) }) -> DeleteTagsRequest
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
  = DescribeAgentsRequest { agentIds :: Maybe (AgentIds), filters :: Maybe (Filters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) }
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
newDescribeAgentsRequest' :: ({ agentIds :: Maybe (AgentIds), filters :: Maybe (Filters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) } -> { agentIds :: Maybe (AgentIds), filters :: Maybe (Filters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) }) -> DescribeAgentsRequest
```

Constructs DescribeAgentsRequest's fields from required parameters

#### `DescribeAgentsResponse`

``` purescript
newtype DescribeAgentsResponse
  = DescribeAgentsResponse { agentsInfo :: Maybe (AgentsInfo), nextToken :: Maybe (NextToken) }
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
newDescribeAgentsResponse' :: ({ agentsInfo :: Maybe (AgentsInfo), nextToken :: Maybe (NextToken) } -> { agentsInfo :: Maybe (AgentsInfo), nextToken :: Maybe (NextToken) }) -> DescribeAgentsResponse
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
  = DescribeConfigurationsResponse { configurations :: Maybe (DescribeConfigurationsAttributes) }
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
newDescribeConfigurationsResponse' :: ({ configurations :: Maybe (DescribeConfigurationsAttributes) } -> { configurations :: Maybe (DescribeConfigurationsAttributes) }) -> DescribeConfigurationsResponse
```

Constructs DescribeConfigurationsResponse's fields from required parameters

#### `DescribeExportConfigurationsRequest`

``` purescript
newtype DescribeExportConfigurationsRequest
  = DescribeExportConfigurationsRequest { exportIds :: Maybe (ExportIds), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) }
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
newDescribeExportConfigurationsRequest' :: ({ exportIds :: Maybe (ExportIds), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) } -> { exportIds :: Maybe (ExportIds), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) }) -> DescribeExportConfigurationsRequest
```

Constructs DescribeExportConfigurationsRequest's fields from required parameters

#### `DescribeExportConfigurationsResponse`

``` purescript
newtype DescribeExportConfigurationsResponse
  = DescribeExportConfigurationsResponse { exportsInfo :: Maybe (ExportsInfo), nextToken :: Maybe (NextToken) }
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
newDescribeExportConfigurationsResponse' :: ({ exportsInfo :: Maybe (ExportsInfo), nextToken :: Maybe (NextToken) } -> { exportsInfo :: Maybe (ExportsInfo), nextToken :: Maybe (NextToken) }) -> DescribeExportConfigurationsResponse
```

Constructs DescribeExportConfigurationsResponse's fields from required parameters

#### `DescribeExportTasksRequest`

``` purescript
newtype DescribeExportTasksRequest
  = DescribeExportTasksRequest { exportIds :: Maybe (ExportIds), filters :: Maybe (ExportFilters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) }
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
newDescribeExportTasksRequest' :: ({ exportIds :: Maybe (ExportIds), filters :: Maybe (ExportFilters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) } -> { exportIds :: Maybe (ExportIds), filters :: Maybe (ExportFilters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) }) -> DescribeExportTasksRequest
```

Constructs DescribeExportTasksRequest's fields from required parameters

#### `DescribeExportTasksResponse`

``` purescript
newtype DescribeExportTasksResponse
  = DescribeExportTasksResponse { exportsInfo :: Maybe (ExportsInfo), nextToken :: Maybe (NextToken) }
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
newDescribeExportTasksResponse' :: ({ exportsInfo :: Maybe (ExportsInfo), nextToken :: Maybe (NextToken) } -> { exportsInfo :: Maybe (ExportsInfo), nextToken :: Maybe (NextToken) }) -> DescribeExportTasksResponse
```

Constructs DescribeExportTasksResponse's fields from required parameters

#### `DescribeTagsRequest`

``` purescript
newtype DescribeTagsRequest
  = DescribeTagsRequest { filters :: Maybe (TagFilters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) }
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
newDescribeTagsRequest' :: ({ filters :: Maybe (TagFilters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) } -> { filters :: Maybe (TagFilters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken) }) -> DescribeTagsRequest
```

Constructs DescribeTagsRequest's fields from required parameters

#### `DescribeTagsResponse`

``` purescript
newtype DescribeTagsResponse
  = DescribeTagsResponse { tags :: Maybe (ConfigurationTagSet), nextToken :: Maybe (NextToken) }
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
newDescribeTagsResponse' :: ({ tags :: Maybe (ConfigurationTagSet), nextToken :: Maybe (NextToken) } -> { tags :: Maybe (ConfigurationTagSet), nextToken :: Maybe (NextToken) }) -> DescribeTagsResponse
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
  = ExportConfigurationsResponse { exportId :: Maybe (ConfigurationsExportId) }
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
newExportConfigurationsResponse' :: ({ exportId :: Maybe (ConfigurationsExportId) } -> { exportId :: Maybe (ConfigurationsExportId) }) -> ExportConfigurationsResponse
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
  = ExportInfo { exportId :: ConfigurationsExportId, exportStatus :: ExportStatus, statusMessage :: ExportStatusMessage, configurationsDownloadUrl :: Maybe (ConfigurationsDownloadUrl), exportRequestTime :: ExportRequestTime, isTruncated :: Maybe (Boolean), requestedStartTime :: Maybe (TimeStamp), requestedEndTime :: Maybe (TimeStamp) }
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
newExportInfo' :: ConfigurationsExportId -> ExportRequestTime -> ExportStatus -> ExportStatusMessage -> ({ exportId :: ConfigurationsExportId, exportStatus :: ExportStatus, statusMessage :: ExportStatusMessage, configurationsDownloadUrl :: Maybe (ConfigurationsDownloadUrl), exportRequestTime :: ExportRequestTime, isTruncated :: Maybe (Boolean), requestedStartTime :: Maybe (TimeStamp), requestedEndTime :: Maybe (TimeStamp) } -> { exportId :: ConfigurationsExportId, exportStatus :: ExportStatus, statusMessage :: ExportStatusMessage, configurationsDownloadUrl :: Maybe (ConfigurationsDownloadUrl), exportRequestTime :: ExportRequestTime, isTruncated :: Maybe (Boolean), requestedStartTime :: Maybe (TimeStamp), requestedEndTime :: Maybe (TimeStamp) }) -> ExportInfo
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
  = GetDiscoverySummaryResponse { servers :: Maybe (Number), applications :: Maybe (Number), serversMappedToApplications :: Maybe (Number), serversMappedtoTags :: Maybe (Number), agentSummary :: Maybe (CustomerAgentInfo), connectorSummary :: Maybe (CustomerConnectorInfo) }
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
newGetDiscoverySummaryResponse' :: ({ servers :: Maybe (Number), applications :: Maybe (Number), serversMappedToApplications :: Maybe (Number), serversMappedtoTags :: Maybe (Number), agentSummary :: Maybe (CustomerAgentInfo), connectorSummary :: Maybe (CustomerConnectorInfo) } -> { servers :: Maybe (Number), applications :: Maybe (Number), serversMappedToApplications :: Maybe (Number), serversMappedtoTags :: Maybe (Number), agentSummary :: Maybe (CustomerAgentInfo), connectorSummary :: Maybe (CustomerConnectorInfo) }) -> GetDiscoverySummaryResponse
```

Constructs GetDiscoverySummaryResponse's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: Maybe (Message) }
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
newInvalidParameterException' :: ({ message :: Maybe (Message) } -> { message :: Maybe (Message) }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `InvalidParameterValueException`

``` purescript
newtype InvalidParameterValueException
  = InvalidParameterValueException { message :: Maybe (Message) }
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
newInvalidParameterValueException' :: ({ message :: Maybe (Message) } -> { message :: Maybe (Message) }) -> InvalidParameterValueException
```

Constructs InvalidParameterValueException's fields from required parameters

#### `ListConfigurationsRequest`

``` purescript
newtype ListConfigurationsRequest
  = ListConfigurationsRequest { configurationType :: ConfigurationItemType, filters :: Maybe (Filters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken), orderBy :: Maybe (OrderByList) }
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
newListConfigurationsRequest' :: ConfigurationItemType -> ({ configurationType :: ConfigurationItemType, filters :: Maybe (Filters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken), orderBy :: Maybe (OrderByList) } -> { configurationType :: ConfigurationItemType, filters :: Maybe (Filters), maxResults :: Maybe (Int), nextToken :: Maybe (NextToken), orderBy :: Maybe (OrderByList) }) -> ListConfigurationsRequest
```

Constructs ListConfigurationsRequest's fields from required parameters

#### `ListConfigurationsResponse`

``` purescript
newtype ListConfigurationsResponse
  = ListConfigurationsResponse { configurations :: Maybe (Configurations), nextToken :: Maybe (NextToken) }
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
newListConfigurationsResponse' :: ({ configurations :: Maybe (Configurations), nextToken :: Maybe (NextToken) } -> { configurations :: Maybe (Configurations), nextToken :: Maybe (NextToken) }) -> ListConfigurationsResponse
```

Constructs ListConfigurationsResponse's fields from required parameters

#### `ListServerNeighborsRequest`

``` purescript
newtype ListServerNeighborsRequest
  = ListServerNeighborsRequest { configurationId :: ConfigurationId, portInformationNeeded :: Maybe (Boolean), neighborConfigurationIds :: Maybe (ConfigurationIdList), maxResults :: Maybe (Int), nextToken :: Maybe (String) }
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
newListServerNeighborsRequest' :: ConfigurationId -> ({ configurationId :: ConfigurationId, portInformationNeeded :: Maybe (Boolean), neighborConfigurationIds :: Maybe (ConfigurationIdList), maxResults :: Maybe (Int), nextToken :: Maybe (String) } -> { configurationId :: ConfigurationId, portInformationNeeded :: Maybe (Boolean), neighborConfigurationIds :: Maybe (ConfigurationIdList), maxResults :: Maybe (Int), nextToken :: Maybe (String) }) -> ListServerNeighborsRequest
```

Constructs ListServerNeighborsRequest's fields from required parameters

#### `ListServerNeighborsResponse`

``` purescript
newtype ListServerNeighborsResponse
  = ListServerNeighborsResponse { neighbors :: NeighborDetailsList, nextToken :: Maybe (String), knownDependencyCount :: Maybe (Number) }
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
newListServerNeighborsResponse' :: NeighborDetailsList -> ({ neighbors :: NeighborDetailsList, nextToken :: Maybe (String), knownDependencyCount :: Maybe (Number) } -> { neighbors :: NeighborDetailsList, nextToken :: Maybe (String), knownDependencyCount :: Maybe (Number) }) -> ListServerNeighborsResponse
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
  = NeighborConnectionDetail { sourceServerId :: ConfigurationId, destinationServerId :: ConfigurationId, destinationPort :: Maybe (BoxedInteger), transportProtocol :: Maybe (String), connectionsCount :: Number }
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
newNeighborConnectionDetail' :: Number -> ConfigurationId -> ConfigurationId -> ({ sourceServerId :: ConfigurationId, destinationServerId :: ConfigurationId, destinationPort :: Maybe (BoxedInteger), transportProtocol :: Maybe (String), connectionsCount :: Number } -> { sourceServerId :: ConfigurationId, destinationServerId :: ConfigurationId, destinationPort :: Maybe (BoxedInteger), transportProtocol :: Maybe (String), connectionsCount :: Number }) -> NeighborConnectionDetail
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
  = OperationNotPermittedException { message :: Maybe (Message) }
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
newOperationNotPermittedException' :: ({ message :: Maybe (Message) } -> { message :: Maybe (Message) }) -> OperationNotPermittedException
```

Constructs OperationNotPermittedException's fields from required parameters

#### `OrderByElement`

``` purescript
newtype OrderByElement
  = OrderByElement { fieldName :: String, sortOrder :: Maybe (OrderString') }
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
newOrderByElement' :: String -> ({ fieldName :: String, sortOrder :: Maybe (OrderString') } -> { fieldName :: String, sortOrder :: Maybe (OrderString') }) -> OrderByElement
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
  = ResourceNotFoundException { message :: Maybe (Message) }
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
newResourceNotFoundException' :: ({ message :: Maybe (Message) } -> { message :: Maybe (Message) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `ServerInternalErrorException`

``` purescript
newtype ServerInternalErrorException
  = ServerInternalErrorException { message :: Maybe (Message) }
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
newServerInternalErrorException' :: ({ message :: Maybe (Message) } -> { message :: Maybe (Message) }) -> ServerInternalErrorException
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
  = StartDataCollectionByAgentIdsResponse { agentsConfigurationStatus :: Maybe (AgentConfigurationStatusList) }
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
newStartDataCollectionByAgentIdsResponse' :: ({ agentsConfigurationStatus :: Maybe (AgentConfigurationStatusList) } -> { agentsConfigurationStatus :: Maybe (AgentConfigurationStatusList) }) -> StartDataCollectionByAgentIdsResponse
```

Constructs StartDataCollectionByAgentIdsResponse's fields from required parameters

#### `StartExportTaskRequest`

``` purescript
newtype StartExportTaskRequest
  = StartExportTaskRequest { exportDataFormat :: Maybe (ExportDataFormats), filters :: Maybe (ExportFilters), startTime :: Maybe (TimeStamp), endTime :: Maybe (TimeStamp) }
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
newStartExportTaskRequest' :: ({ exportDataFormat :: Maybe (ExportDataFormats), filters :: Maybe (ExportFilters), startTime :: Maybe (TimeStamp), endTime :: Maybe (TimeStamp) } -> { exportDataFormat :: Maybe (ExportDataFormats), filters :: Maybe (ExportFilters), startTime :: Maybe (TimeStamp), endTime :: Maybe (TimeStamp) }) -> StartExportTaskRequest
```

Constructs StartExportTaskRequest's fields from required parameters

#### `StartExportTaskResponse`

``` purescript
newtype StartExportTaskResponse
  = StartExportTaskResponse { exportId :: Maybe (ConfigurationsExportId) }
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
newStartExportTaskResponse' :: ({ exportId :: Maybe (ConfigurationsExportId) } -> { exportId :: Maybe (ConfigurationsExportId) }) -> StartExportTaskResponse
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
  = StopDataCollectionByAgentIdsResponse { agentsConfigurationStatus :: Maybe (AgentConfigurationStatusList) }
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
newStopDataCollectionByAgentIdsResponse' :: ({ agentsConfigurationStatus :: Maybe (AgentConfigurationStatusList) } -> { agentsConfigurationStatus :: Maybe (AgentConfigurationStatusList) }) -> StopDataCollectionByAgentIdsResponse
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
  = UpdateApplicationRequest { configurationId :: ApplicationId, name :: Maybe (String), description :: Maybe (String) }
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
newUpdateApplicationRequest' :: ApplicationId -> ({ configurationId :: ApplicationId, name :: Maybe (String), description :: Maybe (String) } -> { configurationId :: ApplicationId, name :: Maybe (String), description :: Maybe (String) }) -> UpdateApplicationRequest
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


