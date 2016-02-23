function WriteTFilesForReal(MCD)
nClusters = length(MCD.Clusters);
for x = 1:nClusters
    TimeStamps = MCD.FeatureTimestamps(MCD.Clusters{1}.mySpikes);
    save(fullfile(MCD.TTdn, [MCD.TTfn '_Cluster_' num2str(x)]), 'TimeStamps')
end