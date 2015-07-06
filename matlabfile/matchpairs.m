clear;
clc;
% intensity_image = imread('../../tmp/Calibration Image 2015-06-12/BrightnessImg00007.pgm');
% eo_image = imread('../../tmp/Calibration Image 2015-06-12/UNTRIMMED-RAW-IMAGE 0007.bmp');
% 
% corner1 = FindCorners(intensity_image, 'pgm');
% 
% pointpair = MapPoints(corner1, intensity_image, eo_image, 'pgm', 'bmp');
% 
% movefile('matchpoints4.txt', 'matchpoints4_new_7.txt');

file_prefix = 'matchpoints4_new_';
data = [];
for i = 0:7
    tempstring = strcat(file_prefix, int2str(i), '.txt');
    temp = load(tempstring);
    data = [data; temp];
end

save('matchpoints4_big_new.txt', 'data', '-ascii', '-double');

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
