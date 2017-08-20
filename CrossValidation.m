load dwtSet;
crossData = dwtSet(:,241:320)';
NumberofHiddenNeurons = 0;
incrementFactor = 50;
testAccuracy = zeros(50,1);
TrainingAccuracy = zeros(50,1);
load crossLabel;
groups = ismember(crossLabel,2);
for i=1:50
    [train, test] = crossvalind('holdOut',groups);
    [TrainingTime, TestingTime, TrainingAccuracy(i,1), testAccuracy(i,1)] = elm(crossData(train,:)',crossData(test,:)', 1, NumberofHiddenNeurons, 'radbas',groups(train),groups(test));
    NumberofHiddenNeurons = NumberofHiddenNeurons + incrementFactor;
end