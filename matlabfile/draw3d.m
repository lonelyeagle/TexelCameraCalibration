% clear;
% clc;
% 
% fid = fopen('../flatboard/Model_black_1/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_black_1/Model100/Model100~/shutter_max_black_1.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% 
% fid = fopen('../flatboard/Model_black_1/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', 'k');
% hold on;
% zvalue = zvalue(:);                                                                                                                                                                                                                  
% figure(2),scatter3(intensity, shuttertime, zvalue + 0.663, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k');
% hold on;
% 
% 
% fid = fopen('../flatboard/Model_black_2/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_black_2/Model100/Model100~/shutter_max_black_2.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% fid = fopen('../flatboard/Model_black_2/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', 'k');
% zvalue = zvalue(:);
% figure(2), scatter3(intensity, shuttertime, zvalue + 0.663, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'k');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
fid = fopen('../flatboard/Model_blue_1/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_blue_1/Model100/Model100~/shutter_max_blue_1.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);

fid = fopen('../flatboard/Model_blue_1/Model100/Model100~/xyz.dat', 'rb');
[A,COUNT]=fread(fid,[3, 204*204], 'float');
fclose(fid);
zvalue = A(3,:);
zvalue = reshape(zvalue(1,:), [204, 204])';
zvalue = zvalue(31:174, 31:174);
figure(1), surf(zvalue, 'FaceColor', 'b');
zvalue = zvalue(:);
figure(2), scatter3(intensity, shuttertime, zvalue + 0.663, 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'b');

% fid = fopen('../flatboard/Model_blue_2/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_blue_2/Model100/Model100~/shutter_max_blue_2.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% fid = fopen('../flatboard/Model_blue_2/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', 'b');
% zvalue = zvalue(:);
% figure(2), scatter3(intensity, shuttertime, zvalue + 0.663, 'MarkerEdgeColor', 'b', 'MarkerFaceColor', 'b');
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fid = fopen('../flatboard/Model_brightyellow_1/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_brightyellow_1/Model100/Model100~/shutter_max_brightyellow_1.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% fid = fopen('../flatboard/Model_brightyellow_1/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', [0.8,0.8, 0]);
% zvalue = zvalue(:);
% figure(2), scatter3(intensity, shuttertime, zvalue + 0.663 - 0.0018, 'MarkerEdgeColor', [0.8,0.8, 0], 'MarkerFaceColor', [0.8,0.8, 0]);
% 
% 
% fid = fopen('../flatboard/Model_brightyellow_2/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_brightyellow_2/Model100/Model100~/shutter_max_brightyellow_2.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% fid = fopen('../flatboard/Model_brightyellow_2/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', [0.8,0.8, 0]);
% zvalue = zvalue(:);
% figure(2), scatter3(intensity, shuttertime, zvalue + 0.663 - 0.0018, 'MarkerEdgeColor', [0.8,0.8, 0], 'MarkerFaceColor', [0.8,0.8, 0]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fid = fopen('../flatboard/Model_darkyellow_1/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_darkyellow_1/Model100/Model100~/shutter_max_darkyellow_1.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% fid = fopen('../flatboard/Model_darkyellow_1/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', [0.4,0.4, 0]);hold on;
% zvalue = zvalue(:);
% figure(2), scatter3(intensity, shuttertime, zvalue + 0.663, 'MarkerEdgeColor', [0.4,0.4, 0], 'MarkerFaceColor', [0.8,0.4, 0]);hold on;
% 
% fid = fopen('../flatboard/Model_darkyellow_2/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_darkyellow_2/Model100/Model100~/shutter_max_darkyellow_2.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% fid = fopen('../flatboard/Model_darkyellow_2/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', [0.4,0.4, 0]);
% figure(5), imagesc(zvalue);
% zvalue = zvalue(:);
% figure(2), scatter3(intensity, shuttertime, zvalue + 0.663, 'MarkerEdgeColor', [0.4,0.4, 0], 'MarkerFaceColor', [0.8,0.4, 0]);
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fid = fopen('../flatboard/Model_pink_1/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_pink_1/Model100/Model100~/shutter_max_pink_1.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% fid = fopen('../flatboard/Model_pink_1/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', 'm');
% zvalue = zvalue(:);
% figure(2), scatter3(intensity, shuttertime, zvalue+ 0.663, 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm');
% 
% fid = fopen('../flatboard/Model_pink_2/Model100/Model100~/intensity.dat', 'rb');
% [A,COUNT]=fread(fid,[1, 204*204], 'float');
% fclose(fid);
% intensity = reshape(A(1,:), [204, 204])';
% intensity = intensity(31:174, 31:174);
% intensity = intensity(:);
% 
% shuttertime = load('../flatboard/Model_pink_2/Model100/Model100~/shutter_max_pink_2.txt');
% shuttertime = shuttertime(31:174, 31:174)';
% shuttertime = shuttertime(:);
% 
% fid = fopen('../flatboard/Model_pink_2/Model100/Model100~/xyz.dat', 'rb');
% [A,COUNT]=fread(fid,[3, 204*204], 'float');
% fclose(fid);
% zvalue = A(3,:);
% zvalue = reshape(zvalue(1,:), [204, 204])';
% zvalue = zvalue(31:174, 31:174);
% figure(1), surf(zvalue, 'FaceColor', 'm');
% zvalue = zvalue(:);
% figure(2), scatter3(intensity, shuttertime, zvalue + 0.663, 'MarkerEdgeColor', 'm', 'MarkerFaceColor', 'm');