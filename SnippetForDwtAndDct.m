load result;
trainList = result(1:240,:);
testList = result(321:400,:);
load trainLabel;
options = optimset('maxiter',1000000);
SVM = svmtrain(trainList ,trainLabel,'Kernel_Function','rbf', 'RBF_Sigma', 2^7, 'BoxConstraint', 2^16,'Method','QP','quadprog_opts',options);
predictedResult = svmclassify(SVM,testList);
load testLabel;
r = predictedResult - testLabel
nnz(r)