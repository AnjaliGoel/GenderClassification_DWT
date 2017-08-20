function snippet()
load dwtSet;
trainList = dwtSet(:,1:240)';
testList = dwtSet(:,321:400)';
load trainLabel;
SVM = svmtrain(trainList ,trainLabel,'Kernel_Function','rbf', 'RBF_Sigma', 2^3, 'BoxConstraint', 2^3);
predictedResult = svmclassify(SVM,testList);
load testLabel;
result = predictedResult - testLabel
nnz(result)
size(result)
end