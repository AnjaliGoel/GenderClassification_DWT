function [atdctVector] = DWTofImages(path,list)
n = length(list);
atdctVector = [];
for i=1:n
    im = imread ( [path char(list(i)) '.pgm'] );
    im = imresize(im,[128 128]);
    [a,b,c,d] = dwt2(im,'db8');
    [a1,b1,c1,d1] = dwt2(a,'db8');
    [a2,b2,c2,d2] = dwt2(a1,'db8');
    [a3,b3,c3,d3] = dwt2(a2,'db8');
    [a3,b3,c3,d3] = dwt2(a3,'db8');
    n = size(a3)
    m = floor((90 * n(1)*n(2))/100);
    x = reshape(a3,1,n(1)*n(2));
    sortedArray = sort(x);
    result = sortedArray(1: m);
    atdctVector = [atdctVector;result];
end
    atdctVector = atdctVector' ;
end