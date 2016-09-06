function ds = getDatasource(dm,varargin)
    %Function to handle extracting a datasource from Datamaster
    
    %Get Enteries for requested datasource
    entry = dm.getEntry(varargin{:});
    
    %Access requested datasources
    ds = datasource.empty(0,length(entry));
    for i = 1:length(entry)
        ds(i) = datasource(dm,entry(i).FinalHash);
    end
end