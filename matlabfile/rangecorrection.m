clear;
clc;

fid = fopen('../RangeCorrection/Model/Model100/Model100~/xyz.dat', 'rb');
[A,COUNT]=fread(fid,[3, 21315], 'float');
fclose(fid);
xvalue = reshape(A(1,:), [145, 147]);
yvalue = reshape(A(2,:), [145, 147]);
zvalue = reshape(A(3,:), [145, 147]);
mean(mean(zvalue))
