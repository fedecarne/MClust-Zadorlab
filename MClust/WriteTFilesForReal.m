function OK = WriteTFilesForReal(MCD)
nClusters = length(MCD.Clusters);
for x = 1:nClusters
    TimeStamps = MCD.FeatureTimestamps(MCD.Clusters{x}.mySpikes);%%
    save(fullfile(MCD.TTdn, [MCD.TTfn '_Cluster_' num2str(x)]), 'TimeStamps')
    OK = 1;
end