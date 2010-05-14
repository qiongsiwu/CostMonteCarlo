function SinglePath = GenerateSinglePath(TransProb, StartState, NumWeeks)
%GENERATESINGLEPATH Summary of this function goes here
%   Detailed explanation goes here
    
    SinglePath    = zeros(1,NumWeeks);
    SinglePath(1) = StartState;
    StateProbVec  = rand(NumWeeks,1);
    
    for i=1:NumWeeks-1
        SinglePath(i+1) = NextState(TransProb, SinglePath(i),StateProbVec(i));
    end

end
