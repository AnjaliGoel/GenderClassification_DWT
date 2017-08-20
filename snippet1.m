function snippet1()
for i=1:40
b = randperm(10);
for j = 1:10
a(i,j) = b(j);
end
end
trainData = cell(240,1);
k = 1;
for i = 1:40
for j=1:6
b = a(i,j);
trainData{k} = strcat('s',num2str(i),'/',num2str(b));
k=k+1;
end
end
save trainData trainData;
crossData = cell(80,1);
k = 1;
for i = 1:40
for j=1:2
c = 6+j;
b = a(i,c);
crossData{k} = strcat('s',num2str(i),'/',num2str(b));
k = k+1;
end
end
save crossData crossData;
testData = cell(80,1);
k = 1;
for i = 1:40
for j=1:2
c = 8+j;
b = a(i,c);
testData{k} = strcat('s',num2str(i),'/',num2str(b));
k = k+1;
end
end
save testData testData;
trainLabel = ones(42,1);
trainLabel = [trainLabel;2;2;2;2;2;2];
trainLabel = [trainLabel;ones(6,1)];
trainLabel = [trainLabel;2;2;2;2;2;2];
trainLabel = [trainLabel;ones(6,1)];
trainLabel = [trainLabel;2;2;2;2;2;2];
trainLabel = [trainLabel;ones(114,1)];
trainLabel = [trainLabel;2;2;2;2;2;2];
trainLabel = [trainLabel;ones(12,1)];
trainLabel = [trainLabel;2;2;2;2;2;2];
trainLabel = [trainLabel;ones(30,1)];
save trainLabel trainLabel;
testLabel = ones(14,1);
testLabel = [testLabel;2;2];
testLabel = [testLabel;1;1;2;2;1;1;2;2];
testLabel = [testLabel;ones(38,1)];
testLabel = [testLabel;2;2;1;1;1;1;2;2];
testLabel = [testLabel;ones(10,1)];
save testLabel testLabel;
crossLabel = testLabel;
save crossLabel crossLabel;
load trainData;
load crossData;
load testData;
atListAll = [trainData;crossData;testData];
save atListAll atListAll;
end

