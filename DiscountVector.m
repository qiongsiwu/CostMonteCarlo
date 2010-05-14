function OutVector = DiscountVector(Interest, NumWeeks)
%DISCOUNTVECTOR Summary of this function goes here
%   Detailed explanation goes here
    OutVector      = zeros(NumWeeks,1);
    DiscountFactor = (1 + Interest)^(-1/52);
    CumDiscount     = 1;
    
    for i = 1:NumWeeks
        CumDiscount  = CumDiscount * DiscountFactor;
        OutVector(i) = CumDiscount;
    end
end
