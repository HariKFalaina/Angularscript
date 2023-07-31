
IF NOT EXISTS (select * from IACM_EndpointSystem where EndpointSystemTypeId = 1000 AND DisplayName = 'AngularApp')
INSERT IACM_EndpointSystem (Description, EndpointSystemTypeId, DisplayName, OwnerUserId, ApplicationCode, IsActive, IsTrustedSource,
IsPasswordResetAllowed, IncludeInAttestation, UserObjectName, CreatedBy, CreatedDate, LastModifiedBy, BusinessFriendlyName, LastModifiedDate,
EndpointLogo, EndpointVarianceId, IsMFAEnabled, IsConnected, ConnectionError, LastConnectionOn, IsAuthenticationSupported, IsSSOEnabled,
IsEndpointActive, LogoId) VALUES ('AngularApp',1000,'AngularApp',1,'AngularApp',1,0,0,0,NULL,'System',GETDATE(),NULL,'AngularApp',NULL,NULL,NULL,
0,0,NULL,NULL,0,1,1,NULL)DECLARE @EPId bigint, @EPConfigId bigint
SELECT @EPId = Id from IACM_EndpointSystem where EndpointSystemTypeId = 1000 AND DisplayName = 'AngularApp'
IF NOT EXISTS (select * from IACM_EndpointConfiguration where EndpointSystemId = @EPId)
INSERT IACM_EndpointConfiguration (EndpointSystemId,MapAll,CreatedBy,CreatedDate,LastModifiedBy,LastModifiedDate,ProvisioningOrder,
DeprovisioningOrder) VALUES(@EPId,0,NULL,NULL,NULL,NULL,2147483647,-2147483648)SELECT @EPConfigId = Id from IACM_EndpointConfiguration where EndpointSystemId = @EPId
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 3)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'angularClient',3)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 4)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'angularClient',4)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 5)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'Code',5)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 6)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'https://Asghari:44392',6)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 7)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'https://Asghari:44392',7)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 8)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'openid',8)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 9)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'DomainAPI.FullAccess,DomainService.FullAccess,ReportAPI.FullAccess',9)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 18)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'angularClient',18)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 20)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'angularClient',20)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 22)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'False',22)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 24)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'False',24)
IF NOT EXISTS (select * from IACM_EndpointConfigurationDetail where EndpointConfigurationId = @EPConfigId and SSOApplicationTypeKeyConfigurationId = 26)
INSERT IACM_EndpointConfigurationDetail (EndpointConfigurationId, Value, SSOApplicationTypeKeyConfigurationId)
VALUES (@EPConfigId, 'False',26)