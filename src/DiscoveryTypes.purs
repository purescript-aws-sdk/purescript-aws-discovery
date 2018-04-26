
module AWS.Discovery.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Information about agents or connectors that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation, and whether the agent/connector configuration was updated.</p>
newtype AgentConfigurationStatus = AgentConfigurationStatus 
  { "agentId" :: Maybe (String)
  , "operationSucceeded" :: Maybe (Boolean)
  , "description" :: Maybe (String)
  }
derive instance newtypeAgentConfigurationStatus :: Newtype AgentConfigurationStatus _
derive instance repGenericAgentConfigurationStatus :: Generic AgentConfigurationStatus _
instance showAgentConfigurationStatus :: Show AgentConfigurationStatus where show = genericShow
instance decodeAgentConfigurationStatus :: Decode AgentConfigurationStatus where decode = genericDecode options
instance encodeAgentConfigurationStatus :: Encode AgentConfigurationStatus where encode = genericEncode options

-- | Constructs AgentConfigurationStatus from required parameters
newAgentConfigurationStatus :: AgentConfigurationStatus
newAgentConfigurationStatus  = AgentConfigurationStatus { "agentId": Nothing, "description": Nothing, "operationSucceeded": Nothing }

-- | Constructs AgentConfigurationStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentConfigurationStatus' :: ( { "agentId" :: Maybe (String) , "operationSucceeded" :: Maybe (Boolean) , "description" :: Maybe (String) } -> {"agentId" :: Maybe (String) , "operationSucceeded" :: Maybe (Boolean) , "description" :: Maybe (String) } ) -> AgentConfigurationStatus
newAgentConfigurationStatus'  customize = (AgentConfigurationStatus <<< customize) { "agentId": Nothing, "description": Nothing, "operationSucceeded": Nothing }



newtype AgentConfigurationStatusList = AgentConfigurationStatusList (Array AgentConfigurationStatus)
derive instance newtypeAgentConfigurationStatusList :: Newtype AgentConfigurationStatusList _
derive instance repGenericAgentConfigurationStatusList :: Generic AgentConfigurationStatusList _
instance showAgentConfigurationStatusList :: Show AgentConfigurationStatusList where show = genericShow
instance decodeAgentConfigurationStatusList :: Decode AgentConfigurationStatusList where decode = genericDecode options
instance encodeAgentConfigurationStatusList :: Encode AgentConfigurationStatusList where encode = genericEncode options



newtype AgentId = AgentId String
derive instance newtypeAgentId :: Newtype AgentId _
derive instance repGenericAgentId :: Generic AgentId _
instance showAgentId :: Show AgentId where show = genericShow
instance decodeAgentId :: Decode AgentId where decode = genericDecode options
instance encodeAgentId :: Encode AgentId where encode = genericEncode options



newtype AgentIds = AgentIds (Array AgentId)
derive instance newtypeAgentIds :: Newtype AgentIds _
derive instance repGenericAgentIds :: Generic AgentIds _
instance showAgentIds :: Show AgentIds where show = genericShow
instance decodeAgentIds :: Decode AgentIds where decode = genericDecode options
instance encodeAgentIds :: Encode AgentIds where encode = genericEncode options



-- | <p>Information about agents or connectors associated with the user’s AWS account. Information includes agent or connector IDs, IP addresses, media access control (MAC) addresses, agent or connector health, hostname where the agent or connector resides, and agent version for each agent.</p>
newtype AgentInfo = AgentInfo 
  { "agentId" :: Maybe (AgentId)
  , "hostName" :: Maybe (String)
  , "agentNetworkInfoList" :: Maybe (AgentNetworkInfoList)
  , "connectorId" :: Maybe (String)
  , "version" :: Maybe (String)
  , "health" :: Maybe (AgentStatus)
  , "lastHealthPingTime" :: Maybe (String)
  , "collectionStatus" :: Maybe (String)
  , "agentType" :: Maybe (String)
  , "registeredTime" :: Maybe (String)
  }
derive instance newtypeAgentInfo :: Newtype AgentInfo _
derive instance repGenericAgentInfo :: Generic AgentInfo _
instance showAgentInfo :: Show AgentInfo where show = genericShow
instance decodeAgentInfo :: Decode AgentInfo where decode = genericDecode options
instance encodeAgentInfo :: Encode AgentInfo where encode = genericEncode options

-- | Constructs AgentInfo from required parameters
newAgentInfo :: AgentInfo
newAgentInfo  = AgentInfo { "agentId": Nothing, "agentNetworkInfoList": Nothing, "agentType": Nothing, "collectionStatus": Nothing, "connectorId": Nothing, "health": Nothing, "hostName": Nothing, "lastHealthPingTime": Nothing, "registeredTime": Nothing, "version": Nothing }

-- | Constructs AgentInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentInfo' :: ( { "agentId" :: Maybe (AgentId) , "hostName" :: Maybe (String) , "agentNetworkInfoList" :: Maybe (AgentNetworkInfoList) , "connectorId" :: Maybe (String) , "version" :: Maybe (String) , "health" :: Maybe (AgentStatus) , "lastHealthPingTime" :: Maybe (String) , "collectionStatus" :: Maybe (String) , "agentType" :: Maybe (String) , "registeredTime" :: Maybe (String) } -> {"agentId" :: Maybe (AgentId) , "hostName" :: Maybe (String) , "agentNetworkInfoList" :: Maybe (AgentNetworkInfoList) , "connectorId" :: Maybe (String) , "version" :: Maybe (String) , "health" :: Maybe (AgentStatus) , "lastHealthPingTime" :: Maybe (String) , "collectionStatus" :: Maybe (String) , "agentType" :: Maybe (String) , "registeredTime" :: Maybe (String) } ) -> AgentInfo
newAgentInfo'  customize = (AgentInfo <<< customize) { "agentId": Nothing, "agentNetworkInfoList": Nothing, "agentType": Nothing, "collectionStatus": Nothing, "connectorId": Nothing, "health": Nothing, "hostName": Nothing, "lastHealthPingTime": Nothing, "registeredTime": Nothing, "version": Nothing }



-- | <p>Network details about the host where the agent/connector resides.</p>
newtype AgentNetworkInfo = AgentNetworkInfo 
  { "ipAddress" :: Maybe (String)
  , "macAddress" :: Maybe (String)
  }
derive instance newtypeAgentNetworkInfo :: Newtype AgentNetworkInfo _
derive instance repGenericAgentNetworkInfo :: Generic AgentNetworkInfo _
instance showAgentNetworkInfo :: Show AgentNetworkInfo where show = genericShow
instance decodeAgentNetworkInfo :: Decode AgentNetworkInfo where decode = genericDecode options
instance encodeAgentNetworkInfo :: Encode AgentNetworkInfo where encode = genericEncode options

-- | Constructs AgentNetworkInfo from required parameters
newAgentNetworkInfo :: AgentNetworkInfo
newAgentNetworkInfo  = AgentNetworkInfo { "ipAddress": Nothing, "macAddress": Nothing }

-- | Constructs AgentNetworkInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentNetworkInfo' :: ( { "ipAddress" :: Maybe (String) , "macAddress" :: Maybe (String) } -> {"ipAddress" :: Maybe (String) , "macAddress" :: Maybe (String) } ) -> AgentNetworkInfo
newAgentNetworkInfo'  customize = (AgentNetworkInfo <<< customize) { "ipAddress": Nothing, "macAddress": Nothing }



newtype AgentNetworkInfoList = AgentNetworkInfoList (Array AgentNetworkInfo)
derive instance newtypeAgentNetworkInfoList :: Newtype AgentNetworkInfoList _
derive instance repGenericAgentNetworkInfoList :: Generic AgentNetworkInfoList _
instance showAgentNetworkInfoList :: Show AgentNetworkInfoList where show = genericShow
instance decodeAgentNetworkInfoList :: Decode AgentNetworkInfoList where decode = genericDecode options
instance encodeAgentNetworkInfoList :: Encode AgentNetworkInfoList where encode = genericEncode options



newtype AgentStatus = AgentStatus String
derive instance newtypeAgentStatus :: Newtype AgentStatus _
derive instance repGenericAgentStatus :: Generic AgentStatus _
instance showAgentStatus :: Show AgentStatus where show = genericShow
instance decodeAgentStatus :: Decode AgentStatus where decode = genericDecode options
instance encodeAgentStatus :: Encode AgentStatus where encode = genericEncode options



newtype AgentsInfo = AgentsInfo (Array AgentInfo)
derive instance newtypeAgentsInfo :: Newtype AgentsInfo _
derive instance repGenericAgentsInfo :: Generic AgentsInfo _
instance showAgentsInfo :: Show AgentsInfo where show = genericShow
instance decodeAgentsInfo :: Decode AgentsInfo where decode = genericDecode options
instance encodeAgentsInfo :: Encode AgentsInfo where encode = genericEncode options



newtype ApplicationId = ApplicationId String
derive instance newtypeApplicationId :: Newtype ApplicationId _
derive instance repGenericApplicationId :: Generic ApplicationId _
instance showApplicationId :: Show ApplicationId where show = genericShow
instance decodeApplicationId :: Decode ApplicationId where decode = genericDecode options
instance encodeApplicationId :: Encode ApplicationId where encode = genericEncode options



newtype ApplicationIdsList = ApplicationIdsList (Array ApplicationId)
derive instance newtypeApplicationIdsList :: Newtype ApplicationIdsList _
derive instance repGenericApplicationIdsList :: Generic ApplicationIdsList _
instance showApplicationIdsList :: Show ApplicationIdsList where show = genericShow
instance decodeApplicationIdsList :: Decode ApplicationIdsList where decode = genericDecode options
instance encodeApplicationIdsList :: Encode ApplicationIdsList where encode = genericEncode options



newtype AssociateConfigurationItemsToApplicationRequest = AssociateConfigurationItemsToApplicationRequest 
  { "applicationConfigurationId" :: (ApplicationId)
  , "configurationIds" :: (ConfigurationIdList)
  }
derive instance newtypeAssociateConfigurationItemsToApplicationRequest :: Newtype AssociateConfigurationItemsToApplicationRequest _
derive instance repGenericAssociateConfigurationItemsToApplicationRequest :: Generic AssociateConfigurationItemsToApplicationRequest _
instance showAssociateConfigurationItemsToApplicationRequest :: Show AssociateConfigurationItemsToApplicationRequest where show = genericShow
instance decodeAssociateConfigurationItemsToApplicationRequest :: Decode AssociateConfigurationItemsToApplicationRequest where decode = genericDecode options
instance encodeAssociateConfigurationItemsToApplicationRequest :: Encode AssociateConfigurationItemsToApplicationRequest where encode = genericEncode options

-- | Constructs AssociateConfigurationItemsToApplicationRequest from required parameters
newAssociateConfigurationItemsToApplicationRequest :: ApplicationId -> ConfigurationIdList -> AssociateConfigurationItemsToApplicationRequest
newAssociateConfigurationItemsToApplicationRequest _applicationConfigurationId _configurationIds = AssociateConfigurationItemsToApplicationRequest { "applicationConfigurationId": _applicationConfigurationId, "configurationIds": _configurationIds }

-- | Constructs AssociateConfigurationItemsToApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssociateConfigurationItemsToApplicationRequest' :: ApplicationId -> ConfigurationIdList -> ( { "applicationConfigurationId" :: (ApplicationId) , "configurationIds" :: (ConfigurationIdList) } -> {"applicationConfigurationId" :: (ApplicationId) , "configurationIds" :: (ConfigurationIdList) } ) -> AssociateConfigurationItemsToApplicationRequest
newAssociateConfigurationItemsToApplicationRequest' _applicationConfigurationId _configurationIds customize = (AssociateConfigurationItemsToApplicationRequest <<< customize) { "applicationConfigurationId": _applicationConfigurationId, "configurationIds": _configurationIds }



newtype AssociateConfigurationItemsToApplicationResponse = AssociateConfigurationItemsToApplicationResponse Types.NoArguments
derive instance newtypeAssociateConfigurationItemsToApplicationResponse :: Newtype AssociateConfigurationItemsToApplicationResponse _
derive instance repGenericAssociateConfigurationItemsToApplicationResponse :: Generic AssociateConfigurationItemsToApplicationResponse _
instance showAssociateConfigurationItemsToApplicationResponse :: Show AssociateConfigurationItemsToApplicationResponse where show = genericShow
instance decodeAssociateConfigurationItemsToApplicationResponse :: Decode AssociateConfigurationItemsToApplicationResponse where decode = genericDecode options
instance encodeAssociateConfigurationItemsToApplicationResponse :: Encode AssociateConfigurationItemsToApplicationResponse where encode = genericEncode options



-- | <p>The AWS user account does not have permission to perform the action. Check the IAM policy associated with this account.</p>
newtype AuthorizationErrorException = AuthorizationErrorException 
  { "message" :: Maybe (Message)
  }
derive instance newtypeAuthorizationErrorException :: Newtype AuthorizationErrorException _
derive instance repGenericAuthorizationErrorException :: Generic AuthorizationErrorException _
instance showAuthorizationErrorException :: Show AuthorizationErrorException where show = genericShow
instance decodeAuthorizationErrorException :: Decode AuthorizationErrorException where decode = genericDecode options
instance encodeAuthorizationErrorException :: Encode AuthorizationErrorException where encode = genericEncode options

-- | Constructs AuthorizationErrorException from required parameters
newAuthorizationErrorException :: AuthorizationErrorException
newAuthorizationErrorException  = AuthorizationErrorException { "message": Nothing }

-- | Constructs AuthorizationErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAuthorizationErrorException' :: ( { "message" :: Maybe (Message) } -> {"message" :: Maybe (Message) } ) -> AuthorizationErrorException
newAuthorizationErrorException'  customize = (AuthorizationErrorException <<< customize) { "message": Nothing }



newtype BoxedInteger = BoxedInteger Int
derive instance newtypeBoxedInteger :: Newtype BoxedInteger _
derive instance repGenericBoxedInteger :: Generic BoxedInteger _
instance showBoxedInteger :: Show BoxedInteger where show = genericShow
instance decodeBoxedInteger :: Decode BoxedInteger where decode = genericDecode options
instance encodeBoxedInteger :: Encode BoxedInteger where encode = genericEncode options



newtype Condition = Condition String
derive instance newtypeCondition :: Newtype Condition _
derive instance repGenericCondition :: Generic Condition _
instance showCondition :: Show Condition where show = genericShow
instance decodeCondition :: Decode Condition where decode = genericDecode options
instance encodeCondition :: Encode Condition where encode = genericEncode options



newtype Configuration = Configuration (StrMap.StrMap String)
derive instance newtypeConfiguration :: Newtype Configuration _
derive instance repGenericConfiguration :: Generic Configuration _
instance showConfiguration :: Show Configuration where show = genericShow
instance decodeConfiguration :: Decode Configuration where decode = genericDecode options
instance encodeConfiguration :: Encode Configuration where encode = genericEncode options



newtype ConfigurationId = ConfigurationId String
derive instance newtypeConfigurationId :: Newtype ConfigurationId _
derive instance repGenericConfigurationId :: Generic ConfigurationId _
instance showConfigurationId :: Show ConfigurationId where show = genericShow
instance decodeConfigurationId :: Decode ConfigurationId where decode = genericDecode options
instance encodeConfigurationId :: Encode ConfigurationId where encode = genericEncode options



newtype ConfigurationIdList = ConfigurationIdList (Array ConfigurationId)
derive instance newtypeConfigurationIdList :: Newtype ConfigurationIdList _
derive instance repGenericConfigurationIdList :: Generic ConfigurationIdList _
instance showConfigurationIdList :: Show ConfigurationIdList where show = genericShow
instance decodeConfigurationIdList :: Decode ConfigurationIdList where decode = genericDecode options
instance encodeConfigurationIdList :: Encode ConfigurationIdList where encode = genericEncode options



newtype ConfigurationItemType = ConfigurationItemType String
derive instance newtypeConfigurationItemType :: Newtype ConfigurationItemType _
derive instance repGenericConfigurationItemType :: Generic ConfigurationItemType _
instance showConfigurationItemType :: Show ConfigurationItemType where show = genericShow
instance decodeConfigurationItemType :: Decode ConfigurationItemType where decode = genericDecode options
instance encodeConfigurationItemType :: Encode ConfigurationItemType where encode = genericEncode options



-- | <p>Tags for a configuration item. Tags are metadata that help you categorize IT assets.</p>
newtype ConfigurationTag = ConfigurationTag 
  { "configurationType" :: Maybe (ConfigurationItemType)
  , "configurationId" :: Maybe (ConfigurationId)
  , "key" :: Maybe (TagKey)
  , "value" :: Maybe (TagValue)
  , "timeOfCreation" :: Maybe (TimeStamp)
  }
derive instance newtypeConfigurationTag :: Newtype ConfigurationTag _
derive instance repGenericConfigurationTag :: Generic ConfigurationTag _
instance showConfigurationTag :: Show ConfigurationTag where show = genericShow
instance decodeConfigurationTag :: Decode ConfigurationTag where decode = genericDecode options
instance encodeConfigurationTag :: Encode ConfigurationTag where encode = genericEncode options

-- | Constructs ConfigurationTag from required parameters
newConfigurationTag :: ConfigurationTag
newConfigurationTag  = ConfigurationTag { "configurationId": Nothing, "configurationType": Nothing, "key": Nothing, "timeOfCreation": Nothing, "value": Nothing }

-- | Constructs ConfigurationTag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfigurationTag' :: ( { "configurationType" :: Maybe (ConfigurationItemType) , "configurationId" :: Maybe (ConfigurationId) , "key" :: Maybe (TagKey) , "value" :: Maybe (TagValue) , "timeOfCreation" :: Maybe (TimeStamp) } -> {"configurationType" :: Maybe (ConfigurationItemType) , "configurationId" :: Maybe (ConfigurationId) , "key" :: Maybe (TagKey) , "value" :: Maybe (TagValue) , "timeOfCreation" :: Maybe (TimeStamp) } ) -> ConfigurationTag
newConfigurationTag'  customize = (ConfigurationTag <<< customize) { "configurationId": Nothing, "configurationType": Nothing, "key": Nothing, "timeOfCreation": Nothing, "value": Nothing }



newtype ConfigurationTagSet = ConfigurationTagSet (Array ConfigurationTag)
derive instance newtypeConfigurationTagSet :: Newtype ConfigurationTagSet _
derive instance repGenericConfigurationTagSet :: Generic ConfigurationTagSet _
instance showConfigurationTagSet :: Show ConfigurationTagSet where show = genericShow
instance decodeConfigurationTagSet :: Decode ConfigurationTagSet where decode = genericDecode options
instance encodeConfigurationTagSet :: Encode ConfigurationTagSet where encode = genericEncode options



newtype Configurations = Configurations (Array Configuration)
derive instance newtypeConfigurations :: Newtype Configurations _
derive instance repGenericConfigurations :: Generic Configurations _
instance showConfigurations :: Show Configurations where show = genericShow
instance decodeConfigurations :: Decode Configurations where decode = genericDecode options
instance encodeConfigurations :: Encode Configurations where encode = genericEncode options



newtype ConfigurationsDownloadUrl = ConfigurationsDownloadUrl String
derive instance newtypeConfigurationsDownloadUrl :: Newtype ConfigurationsDownloadUrl _
derive instance repGenericConfigurationsDownloadUrl :: Generic ConfigurationsDownloadUrl _
instance showConfigurationsDownloadUrl :: Show ConfigurationsDownloadUrl where show = genericShow
instance decodeConfigurationsDownloadUrl :: Decode ConfigurationsDownloadUrl where decode = genericDecode options
instance encodeConfigurationsDownloadUrl :: Encode ConfigurationsDownloadUrl where encode = genericEncode options



newtype ConfigurationsExportId = ConfigurationsExportId String
derive instance newtypeConfigurationsExportId :: Newtype ConfigurationsExportId _
derive instance repGenericConfigurationsExportId :: Generic ConfigurationsExportId _
instance showConfigurationsExportId :: Show ConfigurationsExportId where show = genericShow
instance decodeConfigurationsExportId :: Decode ConfigurationsExportId where decode = genericDecode options
instance encodeConfigurationsExportId :: Encode ConfigurationsExportId where encode = genericEncode options



newtype CreateApplicationRequest = CreateApplicationRequest 
  { "name" :: (String)
  , "description" :: Maybe (String)
  }
derive instance newtypeCreateApplicationRequest :: Newtype CreateApplicationRequest _
derive instance repGenericCreateApplicationRequest :: Generic CreateApplicationRequest _
instance showCreateApplicationRequest :: Show CreateApplicationRequest where show = genericShow
instance decodeCreateApplicationRequest :: Decode CreateApplicationRequest where decode = genericDecode options
instance encodeCreateApplicationRequest :: Encode CreateApplicationRequest where encode = genericEncode options

-- | Constructs CreateApplicationRequest from required parameters
newCreateApplicationRequest :: String -> CreateApplicationRequest
newCreateApplicationRequest _name = CreateApplicationRequest { "name": _name, "description": Nothing }

-- | Constructs CreateApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationRequest' :: String -> ( { "name" :: (String) , "description" :: Maybe (String) } -> {"name" :: (String) , "description" :: Maybe (String) } ) -> CreateApplicationRequest
newCreateApplicationRequest' _name customize = (CreateApplicationRequest <<< customize) { "name": _name, "description": Nothing }



newtype CreateApplicationResponse = CreateApplicationResponse 
  { "configurationId" :: Maybe (String)
  }
derive instance newtypeCreateApplicationResponse :: Newtype CreateApplicationResponse _
derive instance repGenericCreateApplicationResponse :: Generic CreateApplicationResponse _
instance showCreateApplicationResponse :: Show CreateApplicationResponse where show = genericShow
instance decodeCreateApplicationResponse :: Decode CreateApplicationResponse where decode = genericDecode options
instance encodeCreateApplicationResponse :: Encode CreateApplicationResponse where encode = genericEncode options

-- | Constructs CreateApplicationResponse from required parameters
newCreateApplicationResponse :: CreateApplicationResponse
newCreateApplicationResponse  = CreateApplicationResponse { "configurationId": Nothing }

-- | Constructs CreateApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationResponse' :: ( { "configurationId" :: Maybe (String) } -> {"configurationId" :: Maybe (String) } ) -> CreateApplicationResponse
newCreateApplicationResponse'  customize = (CreateApplicationResponse <<< customize) { "configurationId": Nothing }



newtype CreateTagsRequest = CreateTagsRequest 
  { "configurationIds" :: (ConfigurationIdList)
  , "tags" :: (TagSet)
  }
derive instance newtypeCreateTagsRequest :: Newtype CreateTagsRequest _
derive instance repGenericCreateTagsRequest :: Generic CreateTagsRequest _
instance showCreateTagsRequest :: Show CreateTagsRequest where show = genericShow
instance decodeCreateTagsRequest :: Decode CreateTagsRequest where decode = genericDecode options
instance encodeCreateTagsRequest :: Encode CreateTagsRequest where encode = genericEncode options

-- | Constructs CreateTagsRequest from required parameters
newCreateTagsRequest :: ConfigurationIdList -> TagSet -> CreateTagsRequest
newCreateTagsRequest _configurationIds _tags = CreateTagsRequest { "configurationIds": _configurationIds, "tags": _tags }

-- | Constructs CreateTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTagsRequest' :: ConfigurationIdList -> TagSet -> ( { "configurationIds" :: (ConfigurationIdList) , "tags" :: (TagSet) } -> {"configurationIds" :: (ConfigurationIdList) , "tags" :: (TagSet) } ) -> CreateTagsRequest
newCreateTagsRequest' _configurationIds _tags customize = (CreateTagsRequest <<< customize) { "configurationIds": _configurationIds, "tags": _tags }



newtype CreateTagsResponse = CreateTagsResponse Types.NoArguments
derive instance newtypeCreateTagsResponse :: Newtype CreateTagsResponse _
derive instance repGenericCreateTagsResponse :: Generic CreateTagsResponse _
instance showCreateTagsResponse :: Show CreateTagsResponse where show = genericShow
instance decodeCreateTagsResponse :: Decode CreateTagsResponse where decode = genericDecode options
instance encodeCreateTagsResponse :: Encode CreateTagsResponse where encode = genericEncode options



-- | <p>Inventory data for installed discovery agents.</p>
newtype CustomerAgentInfo = CustomerAgentInfo 
  { "activeAgents" :: (Int)
  , "healthyAgents" :: (Int)
  , "blackListedAgents" :: (Int)
  , "shutdownAgents" :: (Int)
  , "unhealthyAgents" :: (Int)
  , "totalAgents" :: (Int)
  , "unknownAgents" :: (Int)
  }
derive instance newtypeCustomerAgentInfo :: Newtype CustomerAgentInfo _
derive instance repGenericCustomerAgentInfo :: Generic CustomerAgentInfo _
instance showCustomerAgentInfo :: Show CustomerAgentInfo where show = genericShow
instance decodeCustomerAgentInfo :: Decode CustomerAgentInfo where decode = genericDecode options
instance encodeCustomerAgentInfo :: Encode CustomerAgentInfo where encode = genericEncode options

-- | Constructs CustomerAgentInfo from required parameters
newCustomerAgentInfo :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> CustomerAgentInfo
newCustomerAgentInfo _activeAgents _blackListedAgents _healthyAgents _shutdownAgents _totalAgents _unhealthyAgents _unknownAgents = CustomerAgentInfo { "activeAgents": _activeAgents, "blackListedAgents": _blackListedAgents, "healthyAgents": _healthyAgents, "shutdownAgents": _shutdownAgents, "totalAgents": _totalAgents, "unhealthyAgents": _unhealthyAgents, "unknownAgents": _unknownAgents }

-- | Constructs CustomerAgentInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomerAgentInfo' :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> ( { "activeAgents" :: (Int) , "healthyAgents" :: (Int) , "blackListedAgents" :: (Int) , "shutdownAgents" :: (Int) , "unhealthyAgents" :: (Int) , "totalAgents" :: (Int) , "unknownAgents" :: (Int) } -> {"activeAgents" :: (Int) , "healthyAgents" :: (Int) , "blackListedAgents" :: (Int) , "shutdownAgents" :: (Int) , "unhealthyAgents" :: (Int) , "totalAgents" :: (Int) , "unknownAgents" :: (Int) } ) -> CustomerAgentInfo
newCustomerAgentInfo' _activeAgents _blackListedAgents _healthyAgents _shutdownAgents _totalAgents _unhealthyAgents _unknownAgents customize = (CustomerAgentInfo <<< customize) { "activeAgents": _activeAgents, "blackListedAgents": _blackListedAgents, "healthyAgents": _healthyAgents, "shutdownAgents": _shutdownAgents, "totalAgents": _totalAgents, "unhealthyAgents": _unhealthyAgents, "unknownAgents": _unknownAgents }



-- | <p>Inventory data for installed discovery connectors.</p>
newtype CustomerConnectorInfo = CustomerConnectorInfo 
  { "activeConnectors" :: (Int)
  , "healthyConnectors" :: (Int)
  , "blackListedConnectors" :: (Int)
  , "shutdownConnectors" :: (Int)
  , "unhealthyConnectors" :: (Int)
  , "totalConnectors" :: (Int)
  , "unknownConnectors" :: (Int)
  }
derive instance newtypeCustomerConnectorInfo :: Newtype CustomerConnectorInfo _
derive instance repGenericCustomerConnectorInfo :: Generic CustomerConnectorInfo _
instance showCustomerConnectorInfo :: Show CustomerConnectorInfo where show = genericShow
instance decodeCustomerConnectorInfo :: Decode CustomerConnectorInfo where decode = genericDecode options
instance encodeCustomerConnectorInfo :: Encode CustomerConnectorInfo where encode = genericEncode options

-- | Constructs CustomerConnectorInfo from required parameters
newCustomerConnectorInfo :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> CustomerConnectorInfo
newCustomerConnectorInfo _activeConnectors _blackListedConnectors _healthyConnectors _shutdownConnectors _totalConnectors _unhealthyConnectors _unknownConnectors = CustomerConnectorInfo { "activeConnectors": _activeConnectors, "blackListedConnectors": _blackListedConnectors, "healthyConnectors": _healthyConnectors, "shutdownConnectors": _shutdownConnectors, "totalConnectors": _totalConnectors, "unhealthyConnectors": _unhealthyConnectors, "unknownConnectors": _unknownConnectors }

-- | Constructs CustomerConnectorInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCustomerConnectorInfo' :: Int -> Int -> Int -> Int -> Int -> Int -> Int -> ( { "activeConnectors" :: (Int) , "healthyConnectors" :: (Int) , "blackListedConnectors" :: (Int) , "shutdownConnectors" :: (Int) , "unhealthyConnectors" :: (Int) , "totalConnectors" :: (Int) , "unknownConnectors" :: (Int) } -> {"activeConnectors" :: (Int) , "healthyConnectors" :: (Int) , "blackListedConnectors" :: (Int) , "shutdownConnectors" :: (Int) , "unhealthyConnectors" :: (Int) , "totalConnectors" :: (Int) , "unknownConnectors" :: (Int) } ) -> CustomerConnectorInfo
newCustomerConnectorInfo' _activeConnectors _blackListedConnectors _healthyConnectors _shutdownConnectors _totalConnectors _unhealthyConnectors _unknownConnectors customize = (CustomerConnectorInfo <<< customize) { "activeConnectors": _activeConnectors, "blackListedConnectors": _blackListedConnectors, "healthyConnectors": _healthyConnectors, "shutdownConnectors": _shutdownConnectors, "totalConnectors": _totalConnectors, "unhealthyConnectors": _unhealthyConnectors, "unknownConnectors": _unknownConnectors }



newtype DeleteApplicationsRequest = DeleteApplicationsRequest 
  { "configurationIds" :: (ApplicationIdsList)
  }
derive instance newtypeDeleteApplicationsRequest :: Newtype DeleteApplicationsRequest _
derive instance repGenericDeleteApplicationsRequest :: Generic DeleteApplicationsRequest _
instance showDeleteApplicationsRequest :: Show DeleteApplicationsRequest where show = genericShow
instance decodeDeleteApplicationsRequest :: Decode DeleteApplicationsRequest where decode = genericDecode options
instance encodeDeleteApplicationsRequest :: Encode DeleteApplicationsRequest where encode = genericEncode options

-- | Constructs DeleteApplicationsRequest from required parameters
newDeleteApplicationsRequest :: ApplicationIdsList -> DeleteApplicationsRequest
newDeleteApplicationsRequest _configurationIds = DeleteApplicationsRequest { "configurationIds": _configurationIds }

-- | Constructs DeleteApplicationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteApplicationsRequest' :: ApplicationIdsList -> ( { "configurationIds" :: (ApplicationIdsList) } -> {"configurationIds" :: (ApplicationIdsList) } ) -> DeleteApplicationsRequest
newDeleteApplicationsRequest' _configurationIds customize = (DeleteApplicationsRequest <<< customize) { "configurationIds": _configurationIds }



newtype DeleteApplicationsResponse = DeleteApplicationsResponse Types.NoArguments
derive instance newtypeDeleteApplicationsResponse :: Newtype DeleteApplicationsResponse _
derive instance repGenericDeleteApplicationsResponse :: Generic DeleteApplicationsResponse _
instance showDeleteApplicationsResponse :: Show DeleteApplicationsResponse where show = genericShow
instance decodeDeleteApplicationsResponse :: Decode DeleteApplicationsResponse where decode = genericDecode options
instance encodeDeleteApplicationsResponse :: Encode DeleteApplicationsResponse where encode = genericEncode options



newtype DeleteTagsRequest = DeleteTagsRequest 
  { "configurationIds" :: (ConfigurationIdList)
  , "tags" :: Maybe (TagSet)
  }
derive instance newtypeDeleteTagsRequest :: Newtype DeleteTagsRequest _
derive instance repGenericDeleteTagsRequest :: Generic DeleteTagsRequest _
instance showDeleteTagsRequest :: Show DeleteTagsRequest where show = genericShow
instance decodeDeleteTagsRequest :: Decode DeleteTagsRequest where decode = genericDecode options
instance encodeDeleteTagsRequest :: Encode DeleteTagsRequest where encode = genericEncode options

-- | Constructs DeleteTagsRequest from required parameters
newDeleteTagsRequest :: ConfigurationIdList -> DeleteTagsRequest
newDeleteTagsRequest _configurationIds = DeleteTagsRequest { "configurationIds": _configurationIds, "tags": Nothing }

-- | Constructs DeleteTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTagsRequest' :: ConfigurationIdList -> ( { "configurationIds" :: (ConfigurationIdList) , "tags" :: Maybe (TagSet) } -> {"configurationIds" :: (ConfigurationIdList) , "tags" :: Maybe (TagSet) } ) -> DeleteTagsRequest
newDeleteTagsRequest' _configurationIds customize = (DeleteTagsRequest <<< customize) { "configurationIds": _configurationIds, "tags": Nothing }



newtype DeleteTagsResponse = DeleteTagsResponse Types.NoArguments
derive instance newtypeDeleteTagsResponse :: Newtype DeleteTagsResponse _
derive instance repGenericDeleteTagsResponse :: Generic DeleteTagsResponse _
instance showDeleteTagsResponse :: Show DeleteTagsResponse where show = genericShow
instance decodeDeleteTagsResponse :: Decode DeleteTagsResponse where decode = genericDecode options
instance encodeDeleteTagsResponse :: Encode DeleteTagsResponse where encode = genericEncode options



newtype DescribeAgentsRequest = DescribeAgentsRequest 
  { "agentIds" :: Maybe (AgentIds)
  , "filters" :: Maybe (Filters)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeAgentsRequest :: Newtype DescribeAgentsRequest _
derive instance repGenericDescribeAgentsRequest :: Generic DescribeAgentsRequest _
instance showDescribeAgentsRequest :: Show DescribeAgentsRequest where show = genericShow
instance decodeDescribeAgentsRequest :: Decode DescribeAgentsRequest where decode = genericDecode options
instance encodeDescribeAgentsRequest :: Encode DescribeAgentsRequest where encode = genericEncode options

-- | Constructs DescribeAgentsRequest from required parameters
newDescribeAgentsRequest :: DescribeAgentsRequest
newDescribeAgentsRequest  = DescribeAgentsRequest { "agentIds": Nothing, "filters": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs DescribeAgentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAgentsRequest' :: ( { "agentIds" :: Maybe (AgentIds) , "filters" :: Maybe (Filters) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) } -> {"agentIds" :: Maybe (AgentIds) , "filters" :: Maybe (Filters) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) } ) -> DescribeAgentsRequest
newDescribeAgentsRequest'  customize = (DescribeAgentsRequest <<< customize) { "agentIds": Nothing, "filters": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype DescribeAgentsResponse = DescribeAgentsResponse 
  { "agentsInfo" :: Maybe (AgentsInfo)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeAgentsResponse :: Newtype DescribeAgentsResponse _
derive instance repGenericDescribeAgentsResponse :: Generic DescribeAgentsResponse _
instance showDescribeAgentsResponse :: Show DescribeAgentsResponse where show = genericShow
instance decodeDescribeAgentsResponse :: Decode DescribeAgentsResponse where decode = genericDecode options
instance encodeDescribeAgentsResponse :: Encode DescribeAgentsResponse where encode = genericEncode options

-- | Constructs DescribeAgentsResponse from required parameters
newDescribeAgentsResponse :: DescribeAgentsResponse
newDescribeAgentsResponse  = DescribeAgentsResponse { "agentsInfo": Nothing, "nextToken": Nothing }

-- | Constructs DescribeAgentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAgentsResponse' :: ( { "agentsInfo" :: Maybe (AgentsInfo) , "nextToken" :: Maybe (NextToken) } -> {"agentsInfo" :: Maybe (AgentsInfo) , "nextToken" :: Maybe (NextToken) } ) -> DescribeAgentsResponse
newDescribeAgentsResponse'  customize = (DescribeAgentsResponse <<< customize) { "agentsInfo": Nothing, "nextToken": Nothing }



newtype DescribeConfigurationsAttribute = DescribeConfigurationsAttribute (StrMap.StrMap String)
derive instance newtypeDescribeConfigurationsAttribute :: Newtype DescribeConfigurationsAttribute _
derive instance repGenericDescribeConfigurationsAttribute :: Generic DescribeConfigurationsAttribute _
instance showDescribeConfigurationsAttribute :: Show DescribeConfigurationsAttribute where show = genericShow
instance decodeDescribeConfigurationsAttribute :: Decode DescribeConfigurationsAttribute where decode = genericDecode options
instance encodeDescribeConfigurationsAttribute :: Encode DescribeConfigurationsAttribute where encode = genericEncode options



newtype DescribeConfigurationsAttributes = DescribeConfigurationsAttributes (Array DescribeConfigurationsAttribute)
derive instance newtypeDescribeConfigurationsAttributes :: Newtype DescribeConfigurationsAttributes _
derive instance repGenericDescribeConfigurationsAttributes :: Generic DescribeConfigurationsAttributes _
instance showDescribeConfigurationsAttributes :: Show DescribeConfigurationsAttributes where show = genericShow
instance decodeDescribeConfigurationsAttributes :: Decode DescribeConfigurationsAttributes where decode = genericDecode options
instance encodeDescribeConfigurationsAttributes :: Encode DescribeConfigurationsAttributes where encode = genericEncode options



newtype DescribeConfigurationsRequest = DescribeConfigurationsRequest 
  { "configurationIds" :: (ConfigurationIdList)
  }
derive instance newtypeDescribeConfigurationsRequest :: Newtype DescribeConfigurationsRequest _
derive instance repGenericDescribeConfigurationsRequest :: Generic DescribeConfigurationsRequest _
instance showDescribeConfigurationsRequest :: Show DescribeConfigurationsRequest where show = genericShow
instance decodeDescribeConfigurationsRequest :: Decode DescribeConfigurationsRequest where decode = genericDecode options
instance encodeDescribeConfigurationsRequest :: Encode DescribeConfigurationsRequest where encode = genericEncode options

-- | Constructs DescribeConfigurationsRequest from required parameters
newDescribeConfigurationsRequest :: ConfigurationIdList -> DescribeConfigurationsRequest
newDescribeConfigurationsRequest _configurationIds = DescribeConfigurationsRequest { "configurationIds": _configurationIds }

-- | Constructs DescribeConfigurationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationsRequest' :: ConfigurationIdList -> ( { "configurationIds" :: (ConfigurationIdList) } -> {"configurationIds" :: (ConfigurationIdList) } ) -> DescribeConfigurationsRequest
newDescribeConfigurationsRequest' _configurationIds customize = (DescribeConfigurationsRequest <<< customize) { "configurationIds": _configurationIds }



newtype DescribeConfigurationsResponse = DescribeConfigurationsResponse 
  { "configurations" :: Maybe (DescribeConfigurationsAttributes)
  }
derive instance newtypeDescribeConfigurationsResponse :: Newtype DescribeConfigurationsResponse _
derive instance repGenericDescribeConfigurationsResponse :: Generic DescribeConfigurationsResponse _
instance showDescribeConfigurationsResponse :: Show DescribeConfigurationsResponse where show = genericShow
instance decodeDescribeConfigurationsResponse :: Decode DescribeConfigurationsResponse where decode = genericDecode options
instance encodeDescribeConfigurationsResponse :: Encode DescribeConfigurationsResponse where encode = genericEncode options

-- | Constructs DescribeConfigurationsResponse from required parameters
newDescribeConfigurationsResponse :: DescribeConfigurationsResponse
newDescribeConfigurationsResponse  = DescribeConfigurationsResponse { "configurations": Nothing }

-- | Constructs DescribeConfigurationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeConfigurationsResponse' :: ( { "configurations" :: Maybe (DescribeConfigurationsAttributes) } -> {"configurations" :: Maybe (DescribeConfigurationsAttributes) } ) -> DescribeConfigurationsResponse
newDescribeConfigurationsResponse'  customize = (DescribeConfigurationsResponse <<< customize) { "configurations": Nothing }



newtype DescribeExportConfigurationsRequest = DescribeExportConfigurationsRequest 
  { "exportIds" :: Maybe (ExportIds)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeExportConfigurationsRequest :: Newtype DescribeExportConfigurationsRequest _
derive instance repGenericDescribeExportConfigurationsRequest :: Generic DescribeExportConfigurationsRequest _
instance showDescribeExportConfigurationsRequest :: Show DescribeExportConfigurationsRequest where show = genericShow
instance decodeDescribeExportConfigurationsRequest :: Decode DescribeExportConfigurationsRequest where decode = genericDecode options
instance encodeDescribeExportConfigurationsRequest :: Encode DescribeExportConfigurationsRequest where encode = genericEncode options

-- | Constructs DescribeExportConfigurationsRequest from required parameters
newDescribeExportConfigurationsRequest :: DescribeExportConfigurationsRequest
newDescribeExportConfigurationsRequest  = DescribeExportConfigurationsRequest { "exportIds": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs DescribeExportConfigurationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExportConfigurationsRequest' :: ( { "exportIds" :: Maybe (ExportIds) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) } -> {"exportIds" :: Maybe (ExportIds) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) } ) -> DescribeExportConfigurationsRequest
newDescribeExportConfigurationsRequest'  customize = (DescribeExportConfigurationsRequest <<< customize) { "exportIds": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype DescribeExportConfigurationsResponse = DescribeExportConfigurationsResponse 
  { "exportsInfo" :: Maybe (ExportsInfo)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeExportConfigurationsResponse :: Newtype DescribeExportConfigurationsResponse _
derive instance repGenericDescribeExportConfigurationsResponse :: Generic DescribeExportConfigurationsResponse _
instance showDescribeExportConfigurationsResponse :: Show DescribeExportConfigurationsResponse where show = genericShow
instance decodeDescribeExportConfigurationsResponse :: Decode DescribeExportConfigurationsResponse where decode = genericDecode options
instance encodeDescribeExportConfigurationsResponse :: Encode DescribeExportConfigurationsResponse where encode = genericEncode options

-- | Constructs DescribeExportConfigurationsResponse from required parameters
newDescribeExportConfigurationsResponse :: DescribeExportConfigurationsResponse
newDescribeExportConfigurationsResponse  = DescribeExportConfigurationsResponse { "exportsInfo": Nothing, "nextToken": Nothing }

-- | Constructs DescribeExportConfigurationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExportConfigurationsResponse' :: ( { "exportsInfo" :: Maybe (ExportsInfo) , "nextToken" :: Maybe (NextToken) } -> {"exportsInfo" :: Maybe (ExportsInfo) , "nextToken" :: Maybe (NextToken) } ) -> DescribeExportConfigurationsResponse
newDescribeExportConfigurationsResponse'  customize = (DescribeExportConfigurationsResponse <<< customize) { "exportsInfo": Nothing, "nextToken": Nothing }



newtype DescribeExportTasksRequest = DescribeExportTasksRequest 
  { "exportIds" :: Maybe (ExportIds)
  , "filters" :: Maybe (ExportFilters)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeExportTasksRequest :: Newtype DescribeExportTasksRequest _
derive instance repGenericDescribeExportTasksRequest :: Generic DescribeExportTasksRequest _
instance showDescribeExportTasksRequest :: Show DescribeExportTasksRequest where show = genericShow
instance decodeDescribeExportTasksRequest :: Decode DescribeExportTasksRequest where decode = genericDecode options
instance encodeDescribeExportTasksRequest :: Encode DescribeExportTasksRequest where encode = genericEncode options

-- | Constructs DescribeExportTasksRequest from required parameters
newDescribeExportTasksRequest :: DescribeExportTasksRequest
newDescribeExportTasksRequest  = DescribeExportTasksRequest { "exportIds": Nothing, "filters": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs DescribeExportTasksRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExportTasksRequest' :: ( { "exportIds" :: Maybe (ExportIds) , "filters" :: Maybe (ExportFilters) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) } -> {"exportIds" :: Maybe (ExportIds) , "filters" :: Maybe (ExportFilters) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) } ) -> DescribeExportTasksRequest
newDescribeExportTasksRequest'  customize = (DescribeExportTasksRequest <<< customize) { "exportIds": Nothing, "filters": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype DescribeExportTasksResponse = DescribeExportTasksResponse 
  { "exportsInfo" :: Maybe (ExportsInfo)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeExportTasksResponse :: Newtype DescribeExportTasksResponse _
derive instance repGenericDescribeExportTasksResponse :: Generic DescribeExportTasksResponse _
instance showDescribeExportTasksResponse :: Show DescribeExportTasksResponse where show = genericShow
instance decodeDescribeExportTasksResponse :: Decode DescribeExportTasksResponse where decode = genericDecode options
instance encodeDescribeExportTasksResponse :: Encode DescribeExportTasksResponse where encode = genericEncode options

-- | Constructs DescribeExportTasksResponse from required parameters
newDescribeExportTasksResponse :: DescribeExportTasksResponse
newDescribeExportTasksResponse  = DescribeExportTasksResponse { "exportsInfo": Nothing, "nextToken": Nothing }

-- | Constructs DescribeExportTasksResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeExportTasksResponse' :: ( { "exportsInfo" :: Maybe (ExportsInfo) , "nextToken" :: Maybe (NextToken) } -> {"exportsInfo" :: Maybe (ExportsInfo) , "nextToken" :: Maybe (NextToken) } ) -> DescribeExportTasksResponse
newDescribeExportTasksResponse'  customize = (DescribeExportTasksResponse <<< customize) { "exportsInfo": Nothing, "nextToken": Nothing }



newtype DescribeTagsRequest = DescribeTagsRequest 
  { "filters" :: Maybe (TagFilters)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeTagsRequest :: Newtype DescribeTagsRequest _
derive instance repGenericDescribeTagsRequest :: Generic DescribeTagsRequest _
instance showDescribeTagsRequest :: Show DescribeTagsRequest where show = genericShow
instance decodeDescribeTagsRequest :: Decode DescribeTagsRequest where decode = genericDecode options
instance encodeDescribeTagsRequest :: Encode DescribeTagsRequest where encode = genericEncode options

-- | Constructs DescribeTagsRequest from required parameters
newDescribeTagsRequest :: DescribeTagsRequest
newDescribeTagsRequest  = DescribeTagsRequest { "filters": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs DescribeTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTagsRequest' :: ( { "filters" :: Maybe (TagFilters) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) } -> {"filters" :: Maybe (TagFilters) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) } ) -> DescribeTagsRequest
newDescribeTagsRequest'  customize = (DescribeTagsRequest <<< customize) { "filters": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype DescribeTagsResponse = DescribeTagsResponse 
  { "tags" :: Maybe (ConfigurationTagSet)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeTagsResponse :: Newtype DescribeTagsResponse _
derive instance repGenericDescribeTagsResponse :: Generic DescribeTagsResponse _
instance showDescribeTagsResponse :: Show DescribeTagsResponse where show = genericShow
instance decodeDescribeTagsResponse :: Decode DescribeTagsResponse where decode = genericDecode options
instance encodeDescribeTagsResponse :: Encode DescribeTagsResponse where encode = genericEncode options

-- | Constructs DescribeTagsResponse from required parameters
newDescribeTagsResponse :: DescribeTagsResponse
newDescribeTagsResponse  = DescribeTagsResponse { "nextToken": Nothing, "tags": Nothing }

-- | Constructs DescribeTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTagsResponse' :: ( { "tags" :: Maybe (ConfigurationTagSet) , "nextToken" :: Maybe (NextToken) } -> {"tags" :: Maybe (ConfigurationTagSet) , "nextToken" :: Maybe (NextToken) } ) -> DescribeTagsResponse
newDescribeTagsResponse'  customize = (DescribeTagsResponse <<< customize) { "nextToken": Nothing, "tags": Nothing }



newtype DisassociateConfigurationItemsFromApplicationRequest = DisassociateConfigurationItemsFromApplicationRequest 
  { "applicationConfigurationId" :: (ApplicationId)
  , "configurationIds" :: (ConfigurationIdList)
  }
derive instance newtypeDisassociateConfigurationItemsFromApplicationRequest :: Newtype DisassociateConfigurationItemsFromApplicationRequest _
derive instance repGenericDisassociateConfigurationItemsFromApplicationRequest :: Generic DisassociateConfigurationItemsFromApplicationRequest _
instance showDisassociateConfigurationItemsFromApplicationRequest :: Show DisassociateConfigurationItemsFromApplicationRequest where show = genericShow
instance decodeDisassociateConfigurationItemsFromApplicationRequest :: Decode DisassociateConfigurationItemsFromApplicationRequest where decode = genericDecode options
instance encodeDisassociateConfigurationItemsFromApplicationRequest :: Encode DisassociateConfigurationItemsFromApplicationRequest where encode = genericEncode options

-- | Constructs DisassociateConfigurationItemsFromApplicationRequest from required parameters
newDisassociateConfigurationItemsFromApplicationRequest :: ApplicationId -> ConfigurationIdList -> DisassociateConfigurationItemsFromApplicationRequest
newDisassociateConfigurationItemsFromApplicationRequest _applicationConfigurationId _configurationIds = DisassociateConfigurationItemsFromApplicationRequest { "applicationConfigurationId": _applicationConfigurationId, "configurationIds": _configurationIds }

-- | Constructs DisassociateConfigurationItemsFromApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateConfigurationItemsFromApplicationRequest' :: ApplicationId -> ConfigurationIdList -> ( { "applicationConfigurationId" :: (ApplicationId) , "configurationIds" :: (ConfigurationIdList) } -> {"applicationConfigurationId" :: (ApplicationId) , "configurationIds" :: (ConfigurationIdList) } ) -> DisassociateConfigurationItemsFromApplicationRequest
newDisassociateConfigurationItemsFromApplicationRequest' _applicationConfigurationId _configurationIds customize = (DisassociateConfigurationItemsFromApplicationRequest <<< customize) { "applicationConfigurationId": _applicationConfigurationId, "configurationIds": _configurationIds }



newtype DisassociateConfigurationItemsFromApplicationResponse = DisassociateConfigurationItemsFromApplicationResponse Types.NoArguments
derive instance newtypeDisassociateConfigurationItemsFromApplicationResponse :: Newtype DisassociateConfigurationItemsFromApplicationResponse _
derive instance repGenericDisassociateConfigurationItemsFromApplicationResponse :: Generic DisassociateConfigurationItemsFromApplicationResponse _
instance showDisassociateConfigurationItemsFromApplicationResponse :: Show DisassociateConfigurationItemsFromApplicationResponse where show = genericShow
instance decodeDisassociateConfigurationItemsFromApplicationResponse :: Decode DisassociateConfigurationItemsFromApplicationResponse where decode = genericDecode options
instance encodeDisassociateConfigurationItemsFromApplicationResponse :: Encode DisassociateConfigurationItemsFromApplicationResponse where encode = genericEncode options



newtype ExportConfigurationsResponse = ExportConfigurationsResponse 
  { "exportId" :: Maybe (ConfigurationsExportId)
  }
derive instance newtypeExportConfigurationsResponse :: Newtype ExportConfigurationsResponse _
derive instance repGenericExportConfigurationsResponse :: Generic ExportConfigurationsResponse _
instance showExportConfigurationsResponse :: Show ExportConfigurationsResponse where show = genericShow
instance decodeExportConfigurationsResponse :: Decode ExportConfigurationsResponse where decode = genericDecode options
instance encodeExportConfigurationsResponse :: Encode ExportConfigurationsResponse where encode = genericEncode options

-- | Constructs ExportConfigurationsResponse from required parameters
newExportConfigurationsResponse :: ExportConfigurationsResponse
newExportConfigurationsResponse  = ExportConfigurationsResponse { "exportId": Nothing }

-- | Constructs ExportConfigurationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportConfigurationsResponse' :: ( { "exportId" :: Maybe (ConfigurationsExportId) } -> {"exportId" :: Maybe (ConfigurationsExportId) } ) -> ExportConfigurationsResponse
newExportConfigurationsResponse'  customize = (ExportConfigurationsResponse <<< customize) { "exportId": Nothing }



newtype ExportDataFormat = ExportDataFormat String
derive instance newtypeExportDataFormat :: Newtype ExportDataFormat _
derive instance repGenericExportDataFormat :: Generic ExportDataFormat _
instance showExportDataFormat :: Show ExportDataFormat where show = genericShow
instance decodeExportDataFormat :: Decode ExportDataFormat where decode = genericDecode options
instance encodeExportDataFormat :: Encode ExportDataFormat where encode = genericEncode options



newtype ExportDataFormats = ExportDataFormats (Array ExportDataFormat)
derive instance newtypeExportDataFormats :: Newtype ExportDataFormats _
derive instance repGenericExportDataFormats :: Generic ExportDataFormats _
instance showExportDataFormats :: Show ExportDataFormats where show = genericShow
instance decodeExportDataFormats :: Decode ExportDataFormats where decode = genericDecode options
instance encodeExportDataFormats :: Encode ExportDataFormats where encode = genericEncode options



-- | <p>Used to select which agent's data is to be exported. A single agent ID may be selected for export using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html">StartExportTask</a> action.</p>
newtype ExportFilter = ExportFilter 
  { "name" :: (FilterName)
  , "values" :: (FilterValues)
  , "condition" :: (Condition)
  }
derive instance newtypeExportFilter :: Newtype ExportFilter _
derive instance repGenericExportFilter :: Generic ExportFilter _
instance showExportFilter :: Show ExportFilter where show = genericShow
instance decodeExportFilter :: Decode ExportFilter where decode = genericDecode options
instance encodeExportFilter :: Encode ExportFilter where encode = genericEncode options

-- | Constructs ExportFilter from required parameters
newExportFilter :: Condition -> FilterName -> FilterValues -> ExportFilter
newExportFilter _condition _name _values = ExportFilter { "condition": _condition, "name": _name, "values": _values }

-- | Constructs ExportFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportFilter' :: Condition -> FilterName -> FilterValues -> ( { "name" :: (FilterName) , "values" :: (FilterValues) , "condition" :: (Condition) } -> {"name" :: (FilterName) , "values" :: (FilterValues) , "condition" :: (Condition) } ) -> ExportFilter
newExportFilter' _condition _name _values customize = (ExportFilter <<< customize) { "condition": _condition, "name": _name, "values": _values }



newtype ExportFilters = ExportFilters (Array ExportFilter)
derive instance newtypeExportFilters :: Newtype ExportFilters _
derive instance repGenericExportFilters :: Generic ExportFilters _
instance showExportFilters :: Show ExportFilters where show = genericShow
instance decodeExportFilters :: Decode ExportFilters where decode = genericDecode options
instance encodeExportFilters :: Encode ExportFilters where encode = genericEncode options



newtype ExportIds = ExportIds (Array ConfigurationsExportId)
derive instance newtypeExportIds :: Newtype ExportIds _
derive instance repGenericExportIds :: Generic ExportIds _
instance showExportIds :: Show ExportIds where show = genericShow
instance decodeExportIds :: Decode ExportIds where decode = genericDecode options
instance encodeExportIds :: Encode ExportIds where encode = genericEncode options



-- | <p>Information regarding the export status of discovered data. The value is an array of objects.</p>
newtype ExportInfo = ExportInfo 
  { "exportId" :: (ConfigurationsExportId)
  , "exportStatus" :: (ExportStatus)
  , "statusMessage" :: (ExportStatusMessage)
  , "configurationsDownloadUrl" :: Maybe (ConfigurationsDownloadUrl)
  , "exportRequestTime" :: (ExportRequestTime)
  , "isTruncated" :: Maybe (Boolean)
  , "requestedStartTime" :: Maybe (TimeStamp)
  , "requestedEndTime" :: Maybe (TimeStamp)
  }
derive instance newtypeExportInfo :: Newtype ExportInfo _
derive instance repGenericExportInfo :: Generic ExportInfo _
instance showExportInfo :: Show ExportInfo where show = genericShow
instance decodeExportInfo :: Decode ExportInfo where decode = genericDecode options
instance encodeExportInfo :: Encode ExportInfo where encode = genericEncode options

-- | Constructs ExportInfo from required parameters
newExportInfo :: ConfigurationsExportId -> ExportRequestTime -> ExportStatus -> ExportStatusMessage -> ExportInfo
newExportInfo _exportId _exportRequestTime _exportStatus _statusMessage = ExportInfo { "exportId": _exportId, "exportRequestTime": _exportRequestTime, "exportStatus": _exportStatus, "statusMessage": _statusMessage, "configurationsDownloadUrl": Nothing, "isTruncated": Nothing, "requestedEndTime": Nothing, "requestedStartTime": Nothing }

-- | Constructs ExportInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExportInfo' :: ConfigurationsExportId -> ExportRequestTime -> ExportStatus -> ExportStatusMessage -> ( { "exportId" :: (ConfigurationsExportId) , "exportStatus" :: (ExportStatus) , "statusMessage" :: (ExportStatusMessage) , "configurationsDownloadUrl" :: Maybe (ConfigurationsDownloadUrl) , "exportRequestTime" :: (ExportRequestTime) , "isTruncated" :: Maybe (Boolean) , "requestedStartTime" :: Maybe (TimeStamp) , "requestedEndTime" :: Maybe (TimeStamp) } -> {"exportId" :: (ConfigurationsExportId) , "exportStatus" :: (ExportStatus) , "statusMessage" :: (ExportStatusMessage) , "configurationsDownloadUrl" :: Maybe (ConfigurationsDownloadUrl) , "exportRequestTime" :: (ExportRequestTime) , "isTruncated" :: Maybe (Boolean) , "requestedStartTime" :: Maybe (TimeStamp) , "requestedEndTime" :: Maybe (TimeStamp) } ) -> ExportInfo
newExportInfo' _exportId _exportRequestTime _exportStatus _statusMessage customize = (ExportInfo <<< customize) { "exportId": _exportId, "exportRequestTime": _exportRequestTime, "exportStatus": _exportStatus, "statusMessage": _statusMessage, "configurationsDownloadUrl": Nothing, "isTruncated": Nothing, "requestedEndTime": Nothing, "requestedStartTime": Nothing }



newtype ExportRequestTime = ExportRequestTime Types.Timestamp
derive instance newtypeExportRequestTime :: Newtype ExportRequestTime _
derive instance repGenericExportRequestTime :: Generic ExportRequestTime _
instance showExportRequestTime :: Show ExportRequestTime where show = genericShow
instance decodeExportRequestTime :: Decode ExportRequestTime where decode = genericDecode options
instance encodeExportRequestTime :: Encode ExportRequestTime where encode = genericEncode options



newtype ExportStatus = ExportStatus String
derive instance newtypeExportStatus :: Newtype ExportStatus _
derive instance repGenericExportStatus :: Generic ExportStatus _
instance showExportStatus :: Show ExportStatus where show = genericShow
instance decodeExportStatus :: Decode ExportStatus where decode = genericDecode options
instance encodeExportStatus :: Encode ExportStatus where encode = genericEncode options



newtype ExportStatusMessage = ExportStatusMessage String
derive instance newtypeExportStatusMessage :: Newtype ExportStatusMessage _
derive instance repGenericExportStatusMessage :: Generic ExportStatusMessage _
instance showExportStatusMessage :: Show ExportStatusMessage where show = genericShow
instance decodeExportStatusMessage :: Decode ExportStatusMessage where decode = genericDecode options
instance encodeExportStatusMessage :: Encode ExportStatusMessage where encode = genericEncode options



newtype ExportsInfo = ExportsInfo (Array ExportInfo)
derive instance newtypeExportsInfo :: Newtype ExportsInfo _
derive instance repGenericExportsInfo :: Generic ExportsInfo _
instance showExportsInfo :: Show ExportsInfo where show = genericShow
instance decodeExportsInfo :: Decode ExportsInfo where decode = genericDecode options
instance encodeExportsInfo :: Encode ExportsInfo where encode = genericEncode options



-- | <p>A filter that can use conditional operators.</p> <p>For more information about filters, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/discovery-api-queries.html">Querying Discovered Configuration Items</a>. </p>
newtype Filter = Filter 
  { "name" :: (String)
  , "values" :: (FilterValues)
  , "condition" :: (Condition)
  }
derive instance newtypeFilter :: Newtype Filter _
derive instance repGenericFilter :: Generic Filter _
instance showFilter :: Show Filter where show = genericShow
instance decodeFilter :: Decode Filter where decode = genericDecode options
instance encodeFilter :: Encode Filter where encode = genericEncode options

-- | Constructs Filter from required parameters
newFilter :: Condition -> String -> FilterValues -> Filter
newFilter _condition _name _values = Filter { "condition": _condition, "name": _name, "values": _values }

-- | Constructs Filter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFilter' :: Condition -> String -> FilterValues -> ( { "name" :: (String) , "values" :: (FilterValues) , "condition" :: (Condition) } -> {"name" :: (String) , "values" :: (FilterValues) , "condition" :: (Condition) } ) -> Filter
newFilter' _condition _name _values customize = (Filter <<< customize) { "condition": _condition, "name": _name, "values": _values }



newtype FilterName = FilterName String
derive instance newtypeFilterName :: Newtype FilterName _
derive instance repGenericFilterName :: Generic FilterName _
instance showFilterName :: Show FilterName where show = genericShow
instance decodeFilterName :: Decode FilterName where decode = genericDecode options
instance encodeFilterName :: Encode FilterName where encode = genericEncode options



newtype FilterValue = FilterValue String
derive instance newtypeFilterValue :: Newtype FilterValue _
derive instance repGenericFilterValue :: Generic FilterValue _
instance showFilterValue :: Show FilterValue where show = genericShow
instance decodeFilterValue :: Decode FilterValue where decode = genericDecode options
instance encodeFilterValue :: Encode FilterValue where encode = genericEncode options



newtype FilterValues = FilterValues (Array FilterValue)
derive instance newtypeFilterValues :: Newtype FilterValues _
derive instance repGenericFilterValues :: Generic FilterValues _
instance showFilterValues :: Show FilterValues where show = genericShow
instance decodeFilterValues :: Decode FilterValues where decode = genericDecode options
instance encodeFilterValues :: Encode FilterValues where encode = genericEncode options



newtype Filters = Filters (Array Filter)
derive instance newtypeFilters :: Newtype Filters _
derive instance repGenericFilters :: Generic Filters _
instance showFilters :: Show Filters where show = genericShow
instance decodeFilters :: Decode Filters where decode = genericDecode options
instance encodeFilters :: Encode Filters where encode = genericEncode options



newtype GetDiscoverySummaryRequest = GetDiscoverySummaryRequest Types.NoArguments
derive instance newtypeGetDiscoverySummaryRequest :: Newtype GetDiscoverySummaryRequest _
derive instance repGenericGetDiscoverySummaryRequest :: Generic GetDiscoverySummaryRequest _
instance showGetDiscoverySummaryRequest :: Show GetDiscoverySummaryRequest where show = genericShow
instance decodeGetDiscoverySummaryRequest :: Decode GetDiscoverySummaryRequest where decode = genericDecode options
instance encodeGetDiscoverySummaryRequest :: Encode GetDiscoverySummaryRequest where encode = genericEncode options



newtype GetDiscoverySummaryResponse = GetDiscoverySummaryResponse 
  { "servers" :: Maybe (Number)
  , "applications" :: Maybe (Number)
  , "serversMappedToApplications" :: Maybe (Number)
  , "serversMappedtoTags" :: Maybe (Number)
  , "agentSummary" :: Maybe (CustomerAgentInfo)
  , "connectorSummary" :: Maybe (CustomerConnectorInfo)
  }
derive instance newtypeGetDiscoverySummaryResponse :: Newtype GetDiscoverySummaryResponse _
derive instance repGenericGetDiscoverySummaryResponse :: Generic GetDiscoverySummaryResponse _
instance showGetDiscoverySummaryResponse :: Show GetDiscoverySummaryResponse where show = genericShow
instance decodeGetDiscoverySummaryResponse :: Decode GetDiscoverySummaryResponse where decode = genericDecode options
instance encodeGetDiscoverySummaryResponse :: Encode GetDiscoverySummaryResponse where encode = genericEncode options

-- | Constructs GetDiscoverySummaryResponse from required parameters
newGetDiscoverySummaryResponse :: GetDiscoverySummaryResponse
newGetDiscoverySummaryResponse  = GetDiscoverySummaryResponse { "agentSummary": Nothing, "applications": Nothing, "connectorSummary": Nothing, "servers": Nothing, "serversMappedToApplications": Nothing, "serversMappedtoTags": Nothing }

-- | Constructs GetDiscoverySummaryResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDiscoverySummaryResponse' :: ( { "servers" :: Maybe (Number) , "applications" :: Maybe (Number) , "serversMappedToApplications" :: Maybe (Number) , "serversMappedtoTags" :: Maybe (Number) , "agentSummary" :: Maybe (CustomerAgentInfo) , "connectorSummary" :: Maybe (CustomerConnectorInfo) } -> {"servers" :: Maybe (Number) , "applications" :: Maybe (Number) , "serversMappedToApplications" :: Maybe (Number) , "serversMappedtoTags" :: Maybe (Number) , "agentSummary" :: Maybe (CustomerAgentInfo) , "connectorSummary" :: Maybe (CustomerConnectorInfo) } ) -> GetDiscoverySummaryResponse
newGetDiscoverySummaryResponse'  customize = (GetDiscoverySummaryResponse <<< customize) { "agentSummary": Nothing, "applications": Nothing, "connectorSummary": Nothing, "servers": Nothing, "serversMappedToApplications": Nothing, "serversMappedtoTags": Nothing }



-- | <p>One or more parameters are not valid. Verify the parameters and try again.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: Maybe (Message)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: InvalidParameterException
newInvalidParameterException  = InvalidParameterException { "message": Nothing }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ( { "message" :: Maybe (Message) } -> {"message" :: Maybe (Message) } ) -> InvalidParameterException
newInvalidParameterException'  customize = (InvalidParameterException <<< customize) { "message": Nothing }



-- | <p>The value of one or more parameters are either invalid or out of range. Verify the parameter values and try again.</p>
newtype InvalidParameterValueException = InvalidParameterValueException 
  { "message" :: Maybe (Message)
  }
derive instance newtypeInvalidParameterValueException :: Newtype InvalidParameterValueException _
derive instance repGenericInvalidParameterValueException :: Generic InvalidParameterValueException _
instance showInvalidParameterValueException :: Show InvalidParameterValueException where show = genericShow
instance decodeInvalidParameterValueException :: Decode InvalidParameterValueException where decode = genericDecode options
instance encodeInvalidParameterValueException :: Encode InvalidParameterValueException where encode = genericEncode options

-- | Constructs InvalidParameterValueException from required parameters
newInvalidParameterValueException :: InvalidParameterValueException
newInvalidParameterValueException  = InvalidParameterValueException { "message": Nothing }

-- | Constructs InvalidParameterValueException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterValueException' :: ( { "message" :: Maybe (Message) } -> {"message" :: Maybe (Message) } ) -> InvalidParameterValueException
newInvalidParameterValueException'  customize = (InvalidParameterValueException <<< customize) { "message": Nothing }



newtype ListConfigurationsRequest = ListConfigurationsRequest 
  { "configurationType" :: (ConfigurationItemType)
  , "filters" :: Maybe (Filters)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (NextToken)
  , "orderBy" :: Maybe (OrderByList)
  }
derive instance newtypeListConfigurationsRequest :: Newtype ListConfigurationsRequest _
derive instance repGenericListConfigurationsRequest :: Generic ListConfigurationsRequest _
instance showListConfigurationsRequest :: Show ListConfigurationsRequest where show = genericShow
instance decodeListConfigurationsRequest :: Decode ListConfigurationsRequest where decode = genericDecode options
instance encodeListConfigurationsRequest :: Encode ListConfigurationsRequest where encode = genericEncode options

-- | Constructs ListConfigurationsRequest from required parameters
newListConfigurationsRequest :: ConfigurationItemType -> ListConfigurationsRequest
newListConfigurationsRequest _configurationType = ListConfigurationsRequest { "configurationType": _configurationType, "filters": Nothing, "maxResults": Nothing, "nextToken": Nothing, "orderBy": Nothing }

-- | Constructs ListConfigurationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListConfigurationsRequest' :: ConfigurationItemType -> ( { "configurationType" :: (ConfigurationItemType) , "filters" :: Maybe (Filters) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) , "orderBy" :: Maybe (OrderByList) } -> {"configurationType" :: (ConfigurationItemType) , "filters" :: Maybe (Filters) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (NextToken) , "orderBy" :: Maybe (OrderByList) } ) -> ListConfigurationsRequest
newListConfigurationsRequest' _configurationType customize = (ListConfigurationsRequest <<< customize) { "configurationType": _configurationType, "filters": Nothing, "maxResults": Nothing, "nextToken": Nothing, "orderBy": Nothing }



newtype ListConfigurationsResponse = ListConfigurationsResponse 
  { "configurations" :: Maybe (Configurations)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeListConfigurationsResponse :: Newtype ListConfigurationsResponse _
derive instance repGenericListConfigurationsResponse :: Generic ListConfigurationsResponse _
instance showListConfigurationsResponse :: Show ListConfigurationsResponse where show = genericShow
instance decodeListConfigurationsResponse :: Decode ListConfigurationsResponse where decode = genericDecode options
instance encodeListConfigurationsResponse :: Encode ListConfigurationsResponse where encode = genericEncode options

-- | Constructs ListConfigurationsResponse from required parameters
newListConfigurationsResponse :: ListConfigurationsResponse
newListConfigurationsResponse  = ListConfigurationsResponse { "configurations": Nothing, "nextToken": Nothing }

-- | Constructs ListConfigurationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListConfigurationsResponse' :: ( { "configurations" :: Maybe (Configurations) , "nextToken" :: Maybe (NextToken) } -> {"configurations" :: Maybe (Configurations) , "nextToken" :: Maybe (NextToken) } ) -> ListConfigurationsResponse
newListConfigurationsResponse'  customize = (ListConfigurationsResponse <<< customize) { "configurations": Nothing, "nextToken": Nothing }



newtype ListServerNeighborsRequest = ListServerNeighborsRequest 
  { "configurationId" :: (ConfigurationId)
  , "portInformationNeeded" :: Maybe (Boolean)
  , "neighborConfigurationIds" :: Maybe (ConfigurationIdList)
  , "maxResults" :: Maybe (Int)
  , "nextToken" :: Maybe (String)
  }
derive instance newtypeListServerNeighborsRequest :: Newtype ListServerNeighborsRequest _
derive instance repGenericListServerNeighborsRequest :: Generic ListServerNeighborsRequest _
instance showListServerNeighborsRequest :: Show ListServerNeighborsRequest where show = genericShow
instance decodeListServerNeighborsRequest :: Decode ListServerNeighborsRequest where decode = genericDecode options
instance encodeListServerNeighborsRequest :: Encode ListServerNeighborsRequest where encode = genericEncode options

-- | Constructs ListServerNeighborsRequest from required parameters
newListServerNeighborsRequest :: ConfigurationId -> ListServerNeighborsRequest
newListServerNeighborsRequest _configurationId = ListServerNeighborsRequest { "configurationId": _configurationId, "maxResults": Nothing, "neighborConfigurationIds": Nothing, "nextToken": Nothing, "portInformationNeeded": Nothing }

-- | Constructs ListServerNeighborsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServerNeighborsRequest' :: ConfigurationId -> ( { "configurationId" :: (ConfigurationId) , "portInformationNeeded" :: Maybe (Boolean) , "neighborConfigurationIds" :: Maybe (ConfigurationIdList) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (String) } -> {"configurationId" :: (ConfigurationId) , "portInformationNeeded" :: Maybe (Boolean) , "neighborConfigurationIds" :: Maybe (ConfigurationIdList) , "maxResults" :: Maybe (Int) , "nextToken" :: Maybe (String) } ) -> ListServerNeighborsRequest
newListServerNeighborsRequest' _configurationId customize = (ListServerNeighborsRequest <<< customize) { "configurationId": _configurationId, "maxResults": Nothing, "neighborConfigurationIds": Nothing, "nextToken": Nothing, "portInformationNeeded": Nothing }



newtype ListServerNeighborsResponse = ListServerNeighborsResponse 
  { "neighbors" :: (NeighborDetailsList)
  , "nextToken" :: Maybe (String)
  , "knownDependencyCount" :: Maybe (Number)
  }
derive instance newtypeListServerNeighborsResponse :: Newtype ListServerNeighborsResponse _
derive instance repGenericListServerNeighborsResponse :: Generic ListServerNeighborsResponse _
instance showListServerNeighborsResponse :: Show ListServerNeighborsResponse where show = genericShow
instance decodeListServerNeighborsResponse :: Decode ListServerNeighborsResponse where decode = genericDecode options
instance encodeListServerNeighborsResponse :: Encode ListServerNeighborsResponse where encode = genericEncode options

-- | Constructs ListServerNeighborsResponse from required parameters
newListServerNeighborsResponse :: NeighborDetailsList -> ListServerNeighborsResponse
newListServerNeighborsResponse _neighbors = ListServerNeighborsResponse { "neighbors": _neighbors, "knownDependencyCount": Nothing, "nextToken": Nothing }

-- | Constructs ListServerNeighborsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListServerNeighborsResponse' :: NeighborDetailsList -> ( { "neighbors" :: (NeighborDetailsList) , "nextToken" :: Maybe (String) , "knownDependencyCount" :: Maybe (Number) } -> {"neighbors" :: (NeighborDetailsList) , "nextToken" :: Maybe (String) , "knownDependencyCount" :: Maybe (Number) } ) -> ListServerNeighborsResponse
newListServerNeighborsResponse' _neighbors customize = (ListServerNeighborsResponse <<< customize) { "neighbors": _neighbors, "knownDependencyCount": Nothing, "nextToken": Nothing }



newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options



-- | <p>Details about neighboring servers.</p>
newtype NeighborConnectionDetail = NeighborConnectionDetail 
  { "sourceServerId" :: (ConfigurationId)
  , "destinationServerId" :: (ConfigurationId)
  , "destinationPort" :: Maybe (BoxedInteger)
  , "transportProtocol" :: Maybe (String)
  , "connectionsCount" :: (Number)
  }
derive instance newtypeNeighborConnectionDetail :: Newtype NeighborConnectionDetail _
derive instance repGenericNeighborConnectionDetail :: Generic NeighborConnectionDetail _
instance showNeighborConnectionDetail :: Show NeighborConnectionDetail where show = genericShow
instance decodeNeighborConnectionDetail :: Decode NeighborConnectionDetail where decode = genericDecode options
instance encodeNeighborConnectionDetail :: Encode NeighborConnectionDetail where encode = genericEncode options

-- | Constructs NeighborConnectionDetail from required parameters
newNeighborConnectionDetail :: Number -> ConfigurationId -> ConfigurationId -> NeighborConnectionDetail
newNeighborConnectionDetail _connectionsCount _destinationServerId _sourceServerId = NeighborConnectionDetail { "connectionsCount": _connectionsCount, "destinationServerId": _destinationServerId, "sourceServerId": _sourceServerId, "destinationPort": Nothing, "transportProtocol": Nothing }

-- | Constructs NeighborConnectionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNeighborConnectionDetail' :: Number -> ConfigurationId -> ConfigurationId -> ( { "sourceServerId" :: (ConfigurationId) , "destinationServerId" :: (ConfigurationId) , "destinationPort" :: Maybe (BoxedInteger) , "transportProtocol" :: Maybe (String) , "connectionsCount" :: (Number) } -> {"sourceServerId" :: (ConfigurationId) , "destinationServerId" :: (ConfigurationId) , "destinationPort" :: Maybe (BoxedInteger) , "transportProtocol" :: Maybe (String) , "connectionsCount" :: (Number) } ) -> NeighborConnectionDetail
newNeighborConnectionDetail' _connectionsCount _destinationServerId _sourceServerId customize = (NeighborConnectionDetail <<< customize) { "connectionsCount": _connectionsCount, "destinationServerId": _destinationServerId, "sourceServerId": _sourceServerId, "destinationPort": Nothing, "transportProtocol": Nothing }



newtype NeighborDetailsList = NeighborDetailsList (Array NeighborConnectionDetail)
derive instance newtypeNeighborDetailsList :: Newtype NeighborDetailsList _
derive instance repGenericNeighborDetailsList :: Generic NeighborDetailsList _
instance showNeighborDetailsList :: Show NeighborDetailsList where show = genericShow
instance decodeNeighborDetailsList :: Decode NeighborDetailsList where decode = genericDecode options
instance encodeNeighborDetailsList :: Encode NeighborDetailsList where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>This operation is not permitted.</p>
newtype OperationNotPermittedException = OperationNotPermittedException 
  { "message" :: Maybe (Message)
  }
derive instance newtypeOperationNotPermittedException :: Newtype OperationNotPermittedException _
derive instance repGenericOperationNotPermittedException :: Generic OperationNotPermittedException _
instance showOperationNotPermittedException :: Show OperationNotPermittedException where show = genericShow
instance decodeOperationNotPermittedException :: Decode OperationNotPermittedException where decode = genericDecode options
instance encodeOperationNotPermittedException :: Encode OperationNotPermittedException where encode = genericEncode options

-- | Constructs OperationNotPermittedException from required parameters
newOperationNotPermittedException :: OperationNotPermittedException
newOperationNotPermittedException  = OperationNotPermittedException { "message": Nothing }

-- | Constructs OperationNotPermittedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOperationNotPermittedException' :: ( { "message" :: Maybe (Message) } -> {"message" :: Maybe (Message) } ) -> OperationNotPermittedException
newOperationNotPermittedException'  customize = (OperationNotPermittedException <<< customize) { "message": Nothing }



-- | <p>A field and direction for ordered output.</p>
newtype OrderByElement = OrderByElement 
  { "fieldName" :: (String)
  , "sortOrder" :: Maybe (OrderString')
  }
derive instance newtypeOrderByElement :: Newtype OrderByElement _
derive instance repGenericOrderByElement :: Generic OrderByElement _
instance showOrderByElement :: Show OrderByElement where show = genericShow
instance decodeOrderByElement :: Decode OrderByElement where decode = genericDecode options
instance encodeOrderByElement :: Encode OrderByElement where encode = genericEncode options

-- | Constructs OrderByElement from required parameters
newOrderByElement :: String -> OrderByElement
newOrderByElement _fieldName = OrderByElement { "fieldName": _fieldName, "sortOrder": Nothing }

-- | Constructs OrderByElement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrderByElement' :: String -> ( { "fieldName" :: (String) , "sortOrder" :: Maybe (OrderString') } -> {"fieldName" :: (String) , "sortOrder" :: Maybe (OrderString') } ) -> OrderByElement
newOrderByElement' _fieldName customize = (OrderByElement <<< customize) { "fieldName": _fieldName, "sortOrder": Nothing }



newtype OrderByList = OrderByList (Array OrderByElement)
derive instance newtypeOrderByList :: Newtype OrderByList _
derive instance repGenericOrderByList :: Generic OrderByList _
instance showOrderByList :: Show OrderByList where show = genericShow
instance decodeOrderByList :: Decode OrderByList where decode = genericDecode options
instance encodeOrderByList :: Encode OrderByList where encode = genericEncode options



-- | <p>The specified configuration ID was not located. Verify the configuration ID and try again.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: Maybe (Message)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: Maybe (Message) } -> {"message" :: Maybe (Message) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": Nothing }



-- | <p>The server experienced an internal error. Try again.</p>
newtype ServerInternalErrorException = ServerInternalErrorException 
  { "message" :: Maybe (Message)
  }
derive instance newtypeServerInternalErrorException :: Newtype ServerInternalErrorException _
derive instance repGenericServerInternalErrorException :: Generic ServerInternalErrorException _
instance showServerInternalErrorException :: Show ServerInternalErrorException where show = genericShow
instance decodeServerInternalErrorException :: Decode ServerInternalErrorException where decode = genericDecode options
instance encodeServerInternalErrorException :: Encode ServerInternalErrorException where encode = genericEncode options

-- | Constructs ServerInternalErrorException from required parameters
newServerInternalErrorException :: ServerInternalErrorException
newServerInternalErrorException  = ServerInternalErrorException { "message": Nothing }

-- | Constructs ServerInternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServerInternalErrorException' :: ( { "message" :: Maybe (Message) } -> {"message" :: Maybe (Message) } ) -> ServerInternalErrorException
newServerInternalErrorException'  customize = (ServerInternalErrorException <<< customize) { "message": Nothing }



newtype StartDataCollectionByAgentIdsRequest = StartDataCollectionByAgentIdsRequest 
  { "agentIds" :: (AgentIds)
  }
derive instance newtypeStartDataCollectionByAgentIdsRequest :: Newtype StartDataCollectionByAgentIdsRequest _
derive instance repGenericStartDataCollectionByAgentIdsRequest :: Generic StartDataCollectionByAgentIdsRequest _
instance showStartDataCollectionByAgentIdsRequest :: Show StartDataCollectionByAgentIdsRequest where show = genericShow
instance decodeStartDataCollectionByAgentIdsRequest :: Decode StartDataCollectionByAgentIdsRequest where decode = genericDecode options
instance encodeStartDataCollectionByAgentIdsRequest :: Encode StartDataCollectionByAgentIdsRequest where encode = genericEncode options

-- | Constructs StartDataCollectionByAgentIdsRequest from required parameters
newStartDataCollectionByAgentIdsRequest :: AgentIds -> StartDataCollectionByAgentIdsRequest
newStartDataCollectionByAgentIdsRequest _agentIds = StartDataCollectionByAgentIdsRequest { "agentIds": _agentIds }

-- | Constructs StartDataCollectionByAgentIdsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartDataCollectionByAgentIdsRequest' :: AgentIds -> ( { "agentIds" :: (AgentIds) } -> {"agentIds" :: (AgentIds) } ) -> StartDataCollectionByAgentIdsRequest
newStartDataCollectionByAgentIdsRequest' _agentIds customize = (StartDataCollectionByAgentIdsRequest <<< customize) { "agentIds": _agentIds }



newtype StartDataCollectionByAgentIdsResponse = StartDataCollectionByAgentIdsResponse 
  { "agentsConfigurationStatus" :: Maybe (AgentConfigurationStatusList)
  }
derive instance newtypeStartDataCollectionByAgentIdsResponse :: Newtype StartDataCollectionByAgentIdsResponse _
derive instance repGenericStartDataCollectionByAgentIdsResponse :: Generic StartDataCollectionByAgentIdsResponse _
instance showStartDataCollectionByAgentIdsResponse :: Show StartDataCollectionByAgentIdsResponse where show = genericShow
instance decodeStartDataCollectionByAgentIdsResponse :: Decode StartDataCollectionByAgentIdsResponse where decode = genericDecode options
instance encodeStartDataCollectionByAgentIdsResponse :: Encode StartDataCollectionByAgentIdsResponse where encode = genericEncode options

-- | Constructs StartDataCollectionByAgentIdsResponse from required parameters
newStartDataCollectionByAgentIdsResponse :: StartDataCollectionByAgentIdsResponse
newStartDataCollectionByAgentIdsResponse  = StartDataCollectionByAgentIdsResponse { "agentsConfigurationStatus": Nothing }

-- | Constructs StartDataCollectionByAgentIdsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartDataCollectionByAgentIdsResponse' :: ( { "agentsConfigurationStatus" :: Maybe (AgentConfigurationStatusList) } -> {"agentsConfigurationStatus" :: Maybe (AgentConfigurationStatusList) } ) -> StartDataCollectionByAgentIdsResponse
newStartDataCollectionByAgentIdsResponse'  customize = (StartDataCollectionByAgentIdsResponse <<< customize) { "agentsConfigurationStatus": Nothing }



newtype StartExportTaskRequest = StartExportTaskRequest 
  { "exportDataFormat" :: Maybe (ExportDataFormats)
  , "filters" :: Maybe (ExportFilters)
  , "startTime" :: Maybe (TimeStamp)
  , "endTime" :: Maybe (TimeStamp)
  }
derive instance newtypeStartExportTaskRequest :: Newtype StartExportTaskRequest _
derive instance repGenericStartExportTaskRequest :: Generic StartExportTaskRequest _
instance showStartExportTaskRequest :: Show StartExportTaskRequest where show = genericShow
instance decodeStartExportTaskRequest :: Decode StartExportTaskRequest where decode = genericDecode options
instance encodeStartExportTaskRequest :: Encode StartExportTaskRequest where encode = genericEncode options

-- | Constructs StartExportTaskRequest from required parameters
newStartExportTaskRequest :: StartExportTaskRequest
newStartExportTaskRequest  = StartExportTaskRequest { "endTime": Nothing, "exportDataFormat": Nothing, "filters": Nothing, "startTime": Nothing }

-- | Constructs StartExportTaskRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartExportTaskRequest' :: ( { "exportDataFormat" :: Maybe (ExportDataFormats) , "filters" :: Maybe (ExportFilters) , "startTime" :: Maybe (TimeStamp) , "endTime" :: Maybe (TimeStamp) } -> {"exportDataFormat" :: Maybe (ExportDataFormats) , "filters" :: Maybe (ExportFilters) , "startTime" :: Maybe (TimeStamp) , "endTime" :: Maybe (TimeStamp) } ) -> StartExportTaskRequest
newStartExportTaskRequest'  customize = (StartExportTaskRequest <<< customize) { "endTime": Nothing, "exportDataFormat": Nothing, "filters": Nothing, "startTime": Nothing }



newtype StartExportTaskResponse = StartExportTaskResponse 
  { "exportId" :: Maybe (ConfigurationsExportId)
  }
derive instance newtypeStartExportTaskResponse :: Newtype StartExportTaskResponse _
derive instance repGenericStartExportTaskResponse :: Generic StartExportTaskResponse _
instance showStartExportTaskResponse :: Show StartExportTaskResponse where show = genericShow
instance decodeStartExportTaskResponse :: Decode StartExportTaskResponse where decode = genericDecode options
instance encodeStartExportTaskResponse :: Encode StartExportTaskResponse where encode = genericEncode options

-- | Constructs StartExportTaskResponse from required parameters
newStartExportTaskResponse :: StartExportTaskResponse
newStartExportTaskResponse  = StartExportTaskResponse { "exportId": Nothing }

-- | Constructs StartExportTaskResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartExportTaskResponse' :: ( { "exportId" :: Maybe (ConfigurationsExportId) } -> {"exportId" :: Maybe (ConfigurationsExportId) } ) -> StartExportTaskResponse
newStartExportTaskResponse'  customize = (StartExportTaskResponse <<< customize) { "exportId": Nothing }



newtype StopDataCollectionByAgentIdsRequest = StopDataCollectionByAgentIdsRequest 
  { "agentIds" :: (AgentIds)
  }
derive instance newtypeStopDataCollectionByAgentIdsRequest :: Newtype StopDataCollectionByAgentIdsRequest _
derive instance repGenericStopDataCollectionByAgentIdsRequest :: Generic StopDataCollectionByAgentIdsRequest _
instance showStopDataCollectionByAgentIdsRequest :: Show StopDataCollectionByAgentIdsRequest where show = genericShow
instance decodeStopDataCollectionByAgentIdsRequest :: Decode StopDataCollectionByAgentIdsRequest where decode = genericDecode options
instance encodeStopDataCollectionByAgentIdsRequest :: Encode StopDataCollectionByAgentIdsRequest where encode = genericEncode options

-- | Constructs StopDataCollectionByAgentIdsRequest from required parameters
newStopDataCollectionByAgentIdsRequest :: AgentIds -> StopDataCollectionByAgentIdsRequest
newStopDataCollectionByAgentIdsRequest _agentIds = StopDataCollectionByAgentIdsRequest { "agentIds": _agentIds }

-- | Constructs StopDataCollectionByAgentIdsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopDataCollectionByAgentIdsRequest' :: AgentIds -> ( { "agentIds" :: (AgentIds) } -> {"agentIds" :: (AgentIds) } ) -> StopDataCollectionByAgentIdsRequest
newStopDataCollectionByAgentIdsRequest' _agentIds customize = (StopDataCollectionByAgentIdsRequest <<< customize) { "agentIds": _agentIds }



newtype StopDataCollectionByAgentIdsResponse = StopDataCollectionByAgentIdsResponse 
  { "agentsConfigurationStatus" :: Maybe (AgentConfigurationStatusList)
  }
derive instance newtypeStopDataCollectionByAgentIdsResponse :: Newtype StopDataCollectionByAgentIdsResponse _
derive instance repGenericStopDataCollectionByAgentIdsResponse :: Generic StopDataCollectionByAgentIdsResponse _
instance showStopDataCollectionByAgentIdsResponse :: Show StopDataCollectionByAgentIdsResponse where show = genericShow
instance decodeStopDataCollectionByAgentIdsResponse :: Decode StopDataCollectionByAgentIdsResponse where decode = genericDecode options
instance encodeStopDataCollectionByAgentIdsResponse :: Encode StopDataCollectionByAgentIdsResponse where encode = genericEncode options

-- | Constructs StopDataCollectionByAgentIdsResponse from required parameters
newStopDataCollectionByAgentIdsResponse :: StopDataCollectionByAgentIdsResponse
newStopDataCollectionByAgentIdsResponse  = StopDataCollectionByAgentIdsResponse { "agentsConfigurationStatus": Nothing }

-- | Constructs StopDataCollectionByAgentIdsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopDataCollectionByAgentIdsResponse' :: ( { "agentsConfigurationStatus" :: Maybe (AgentConfigurationStatusList) } -> {"agentsConfigurationStatus" :: Maybe (AgentConfigurationStatusList) } ) -> StopDataCollectionByAgentIdsResponse
newStopDataCollectionByAgentIdsResponse'  customize = (StopDataCollectionByAgentIdsResponse <<< customize) { "agentsConfigurationStatus": Nothing }



-- | <p>Metadata that help you categorize IT assets.</p>
newtype Tag = Tag 
  { "key" :: (TagKey)
  , "value" :: (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKey -> TagValue -> Tag
newTag _key _value = Tag { "key": _key, "value": _value }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKey -> TagValue -> ( { "key" :: (TagKey) , "value" :: (TagValue) } -> {"key" :: (TagKey) , "value" :: (TagValue) } ) -> Tag
newTag' _key _value customize = (Tag <<< customize) { "key": _key, "value": _value }



-- | <p>The tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>, <code>configurationId</code>.</p>
newtype TagFilter = TagFilter 
  { "name" :: (FilterName)
  , "values" :: (FilterValues)
  }
derive instance newtypeTagFilter :: Newtype TagFilter _
derive instance repGenericTagFilter :: Generic TagFilter _
instance showTagFilter :: Show TagFilter where show = genericShow
instance decodeTagFilter :: Decode TagFilter where decode = genericDecode options
instance encodeTagFilter :: Encode TagFilter where encode = genericEncode options

-- | Constructs TagFilter from required parameters
newTagFilter :: FilterName -> FilterValues -> TagFilter
newTagFilter _name _values = TagFilter { "name": _name, "values": _values }

-- | Constructs TagFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagFilter' :: FilterName -> FilterValues -> ( { "name" :: (FilterName) , "values" :: (FilterValues) } -> {"name" :: (FilterName) , "values" :: (FilterValues) } ) -> TagFilter
newTagFilter' _name _values customize = (TagFilter <<< customize) { "name": _name, "values": _values }



newtype TagFilters = TagFilters (Array TagFilter)
derive instance newtypeTagFilters :: Newtype TagFilters _
derive instance repGenericTagFilters :: Generic TagFilters _
instance showTagFilters :: Show TagFilters where show = genericShow
instance decodeTagFilters :: Decode TagFilters where decode = genericDecode options
instance encodeTagFilters :: Encode TagFilters where encode = genericEncode options



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagSet = TagSet (Array Tag)
derive instance newtypeTagSet :: Newtype TagSet _
derive instance repGenericTagSet :: Generic TagSet _
instance showTagSet :: Show TagSet where show = genericShow
instance decodeTagSet :: Decode TagSet where decode = genericDecode options
instance encodeTagSet :: Encode TagSet where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype TimeStamp = TimeStamp Types.Timestamp
derive instance newtypeTimeStamp :: Newtype TimeStamp _
derive instance repGenericTimeStamp :: Generic TimeStamp _
instance showTimeStamp :: Show TimeStamp where show = genericShow
instance decodeTimeStamp :: Decode TimeStamp where decode = genericDecode options
instance encodeTimeStamp :: Encode TimeStamp where encode = genericEncode options



newtype UpdateApplicationRequest = UpdateApplicationRequest 
  { "configurationId" :: (ApplicationId)
  , "name" :: Maybe (String)
  , "description" :: Maybe (String)
  }
derive instance newtypeUpdateApplicationRequest :: Newtype UpdateApplicationRequest _
derive instance repGenericUpdateApplicationRequest :: Generic UpdateApplicationRequest _
instance showUpdateApplicationRequest :: Show UpdateApplicationRequest where show = genericShow
instance decodeUpdateApplicationRequest :: Decode UpdateApplicationRequest where decode = genericDecode options
instance encodeUpdateApplicationRequest :: Encode UpdateApplicationRequest where encode = genericEncode options

-- | Constructs UpdateApplicationRequest from required parameters
newUpdateApplicationRequest :: ApplicationId -> UpdateApplicationRequest
newUpdateApplicationRequest _configurationId = UpdateApplicationRequest { "configurationId": _configurationId, "description": Nothing, "name": Nothing }

-- | Constructs UpdateApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationRequest' :: ApplicationId -> ( { "configurationId" :: (ApplicationId) , "name" :: Maybe (String) , "description" :: Maybe (String) } -> {"configurationId" :: (ApplicationId) , "name" :: Maybe (String) , "description" :: Maybe (String) } ) -> UpdateApplicationRequest
newUpdateApplicationRequest' _configurationId customize = (UpdateApplicationRequest <<< customize) { "configurationId": _configurationId, "description": Nothing, "name": Nothing }



newtype UpdateApplicationResponse = UpdateApplicationResponse Types.NoArguments
derive instance newtypeUpdateApplicationResponse :: Newtype UpdateApplicationResponse _
derive instance repGenericUpdateApplicationResponse :: Generic UpdateApplicationResponse _
instance showUpdateApplicationResponse :: Show UpdateApplicationResponse where show = genericShow
instance decodeUpdateApplicationResponse :: Decode UpdateApplicationResponse where decode = genericDecode options
instance encodeUpdateApplicationResponse :: Encode UpdateApplicationResponse where encode = genericEncode options



newtype OrderString' = OrderString' String
derive instance newtypeOrderString' :: Newtype OrderString' _
derive instance repGenericOrderString' :: Generic OrderString' _
instance showOrderString' :: Show OrderString' where show = genericShow
instance decodeOrderString' :: Decode OrderString' where decode = genericDecode options
instance encodeOrderString' :: Encode OrderString' where encode = genericEncode options

