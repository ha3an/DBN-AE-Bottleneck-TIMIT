function acc = accuracy(confusion)
%% SENSITIVITY calculates sensitivity
% http://bioinformatics.oxfordjournals.org/content/16/5/412.full.pdf+html
% The confusino matrix must be 2 x 2 in the following format:
%                preduction
%  ____________________________
%             |   pos     neg
%   __________|_________________
%   true | pos| 1,1 TP | 1,2 FN
%   clas | neg| 2,1 FP | 2,2 TN
TP   = confusion(1,1);
FN   = confusion(1,2);
FP   = confusion(2,1);
TN   = confusion(2,2);
acc = ((TP + TN) / (TP + TN + FP + FN))
end