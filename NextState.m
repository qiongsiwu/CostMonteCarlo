function OutState = NextState(TransProb,CurrState,StateProb)
%NEXTSTATE Summary of this function goes here
%   Detailed explanation goes here

    Index        = 1;
    KeepGoing    = 1;
    CumDistnPre  = 0;
    CumDistnAft  = 0;
    
    while (Index<=length(TransProb(CurrState,:))) && (KeepGoing == 1)
        CumDistnAft = CumDistnPre + TransProb(CurrState,Index);
        if (StateProb < CumDistnAft && StateProb > CumDistnPre)
            OutState  = Index;
            KeepGoing =0;            
        end
        Index = Index + 1;
        CumDistnPre = CumDistnAft;
    end

end
