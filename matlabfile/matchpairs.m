clear;
clc;
intensity_image = imread('../../tmp/calibration/BrightnessImg00010.pgm');
eo_image = imread('../../tmp/calibration/UNTRIMMED-RAW-IMAGE 0010.bmp');

corner1 = FindCorners(intensity_image, 'pgm');

pointpair = MapPoints(corner1, intensity_image, eo_image, 'pgm', 'bmp');

movefile('matchpoints4.txt', 'matchpoints4_new_10.txt');

% file_prefix = 'matchpoints4_new_';
% data = [];
% for i = 0:7
%     tempstring = strcat(file_prefix, int2str(i), '.txt');
%     temp = load(tempstring);
%     data = [data; temp];
% end
% 
% save('matchpoints4_big_new.txt', 'data', '-ascii', '-double');

% ind = 1:64;
% ind = reshape(ind, [8, 8]);
% ind = ind';
% ind(1,:) = [];
% ind(end,:) = [];
% ind(:,1) = [];
% ind(:,end) = [];
% ind = ind';
% ind = ind(:);
% 
% a = load('matchpoints4_26.txt');
% %a = a(ind, :);
% save('matchpoints_small_4_26.txt', 'a', '-ascii');
