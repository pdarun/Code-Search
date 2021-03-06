--This script will disable indexing for Search.
--Run this script in the Configuration DB of the deployment.

DECLARE @features dbo.typ_KeyValuePairStringTableNullable

INSERT INTO @features values('#\FeatureAvailability\Entries\Search.Server.WorkItem.Indexing\AvailabilityState\', '0')
EXEC prc_UpdateRegistry @partitionId=1, @identityName = '00000000-0000-0000-0000-000000000000', @registryUpdates = @features
INSERT INTO @features values('#\FeatureAvailability\Entries\Search.Server.WorkItem.ContinuousIndexing\AvailabilityState\', '0')
EXEC prc_UpdateRegistry @partitionId=1, @identityName = '00000000-0000-0000-0000-000000000000', @registryUpdates = @features
INSERT INTO @features values('#\FeatureAvailability\Entries\Search.Server.WorkItem.ProjectRename\AvailabilityState\', '0')
EXEC prc_UpdateRegistry @partitionId=1, @identityName = '00000000-0000-0000-0000-000000000000', @registryUpdates = @features
INSERT INTO @features values('#\FeatureAvailability\Entries\Search.Server.WorkItem.ProjectDelete\AvailabilityState\', '0')
EXEC prc_UpdateRegistry @partitionId=1, @identityName = '00000000-0000-0000-0000-000000000000', @registryUpdates = @features
