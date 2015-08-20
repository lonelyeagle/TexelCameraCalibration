clear;
clc;

fid = fopen('../flatboard/Model_black_1/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_black_1/Model100/Model100~/shutter_max_black_1.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity, 'k*');

hold on;

fid = fopen('../flatboard/Model_black_2/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_black_2/Model100/Model100~/shutter_max_black_2.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity, 'k*');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fid = fopen('../flatboard/Model_blue_1/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_blue_1/Model100/Model100~/shutter_max_blue_1.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity, 'b*');


fid = fopen('../flatboard/Model_blue_2/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_blue_2/Model100/Model100~/shutter_max_blue_2.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity, 'b*');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid = fopen('../flatboard/Model_brightyellow_1/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_brightyellow_1/Model100/Model100~/shutter_max_brightyellow_1.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity,'*', 'color',[0.8,0.8, 0]);


fid = fopen('../flatboard/Model_brightyellow_2/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_brightyellow_2/Model100/Model100~/shutter_max_brightyellow_2.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity,'*', 'color',[0.8,0.8, 0]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid = fopen('../flatboard/Model_darkyellow_1/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_darkyellow_1/Model100/Model100~/shutter_max_darkyellow_1.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity,'*', 'color',[0.4,0.4, 0]);


fid = fopen('../flatboard/Model_darkyellow_2/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_darkyellow_2/Model100/Model100~/shutter_max_darkyellow_2.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity,'*', 'color',[0.4,0.4, 0]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid = fopen('../flatboard/Model_pink_1/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_pink_1/Model100/Model100~/shutter_max_pink_1.txt');
shuttertime = shuttertime(31:174, 31:174)';
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity,'m*');


fid = fopen('../flatboard/Model_pink_2/Model100/Model100~/intensity.dat', 'rb');
[A,COUNT]=fread(fid,[1, 204*204], 'float');
fclose(fid);
intensity = reshape(A(1,:), [204, 204])';
intensity = intensity(31:174, 31:174);
intensity = intensity(:);

shuttertime = load('../flatboard/Model_pink_2/Model100/Model100~/shutter_max_pink_2.txt');
shuttertime = shuttertime(31:174, 31:174)';
figure(2), imagesc(shuttertime);
shuttertime = shuttertime(:);
figure(1), plot(shuttertime, intensity,'m*');