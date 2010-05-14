function PathsGenerated = GeneratePath(NumPaths, TransProb, StartState, NumWeeks)
%GENERATEPATH Summary of this function goes here
%   Detailed explanation goes here
    PathsGenerated = zeros(NumPaths, NumWeeks);
    
    for i = 1:NumPaths
        PathsGenerated(i,:) = GenerateSinglePath(TransProb,StartState,NumWeeks);
    end

end
