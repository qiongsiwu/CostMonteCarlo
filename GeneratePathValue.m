function PathValue = GeneratePathValue(Path,Value)
%GENERATEPATHVALUE Summary of this function goes here
%   Detailed explanation goes here
    PathValue = zeros(length(Path),1);
    for i=1:length(Path)
        PathValue(i) = Value(Path(i));
    end

end
