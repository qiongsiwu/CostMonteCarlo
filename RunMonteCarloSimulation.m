function OutVector = RunMonteCarloSimulation(TransProbability, Value, NumPath, IntRate)
%RUNMONTECARLOSIMULATION Summary of this function goes here
%   Detailed explanation goes here
%   Matrix: TransProbability specifies the transition matrix of the markov
%   chain (n*n)
%   Value:  Specifies the value of each states (1*n)
%   NumPath: Total number of sample paths generated (multiple of 100)
%   IntRate: Annualized discount rate used in discounting
    NumWeeks       = 52;    
    StartState     = 1;
    DiscountVec    = DiscountVector(IntRate, NumWeeks);
%   OutVector      = zeros(NumPath, 1);
    
    Paths          = GeneratePath(NumPath, TransProbability, StartState, NumWeeks);
    ValueSets      = zeros(NumPath, NumWeeks);
    
    for i=1:NumPath
        ValueSets(i,:) = GeneratePathValue(Paths(i,:),Value);        
    end    
    
    OutVector      = ValueSets * DiscountVec;

end
