clear;
clc;
dis_path = '../../tmp/record1/distance_';
intense_path = '../../tmp/record1/intensity_';

point_index = randi(41616, 8, 1);
random_pixel_dis = zeros(50, 8);
random_pixel_intense = zeros(50, 8);
for i = 1:50
    data_dis = load(strjoin({dis_path, int2str(i), '.txt'}, ''));
    data_intense = load(strjoin({intense_path, int2str(i), '.txt'}, ''));
    for j = 1:8
        single_point_dis = data_dis(:,point_index(j));
        random_pixel_dis(i,j) = mean(single_point_dis);
        single_point_intense = data_intense(:,point_index(j));
        random_pixel_intense(i,j) = mean(single_point_intense);
    end
end

for i = 1:8
    subplot(2,4,i);
    ind = 1:50;
    plotyy(ind, random_pixel_dis(:,i), ind, random_pixel_intense(:,i));
end

