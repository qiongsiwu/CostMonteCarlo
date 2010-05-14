function Reserve = CTE(SimuResults, Level)
%CTE Summary of this function goes here
%   Detailed explanation goes here
%   Level can be any integer between 1 and 100
%   SimuResults must be a vector of length that is a multiple of 100/
    
    SortedResults = sort(SimuResults);
    BinLevel      = length(SimuResults)/100;
    
    Reserve       = mean(SortedResults(BinLevel*Level+1:end));
end
