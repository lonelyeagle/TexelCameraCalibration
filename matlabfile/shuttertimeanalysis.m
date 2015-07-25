clear;
clc;
dis_path = '../../tmp/record1/distance_';
intense_path = '../../tmp/record1/intensity_';
tstart = tic;
% point_index = randi(41616, 8, 1);
point_index = [17223, 23593, 21117, 17065, 21331, 30004, 11523, 18255];
random_pixel_dis = zeros(50, 8);
random_pixel_intense = zeros(50, 8);
dis_var = zeros(50, 41616);
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
tlast = toc(tstart);
figure(1);
for i = 1:8
    subplot(2,4,i);
    ind = 1:50;
    plotyy(ind, random_pixel_dis(:,i), ind, random_pixel_intense(:,i));
end
% for i = 1:50
%     data_dis = load(strjoin({dis_path, int2str(i), '.txt'}, ''));
%     dis_var(i,:) = var(data_dis);
% end
% 
% figure(2);
% for i = 1:41616
%     plot(dis_var(:,i));
%     hold on;
% end
% intensity_mean = zeros(50, 204*204);
% dis_mean = zeros(50, 204*204);
% for i = 1:50
%     data_intense = load(strjoin({intense_path, int2str(i), '.txt'}, ''));
%     data_dis = load(strjoin({dis_path, int2str(i), '.txt'}, ''));
%     intensity_mean(i,:) = mean(data_intense,1);
%     dis_mean(i,:) = mean(data_dis,1);
% end
% 
% bestimage = zeros(1,204*204);
% [Y,I] = max(intensity_mean, [], 1);
% for i = 1:204*204
%     bestimage(i) = dis_mean(I(i), i);
% end
% bestimage = reshape(bestimage, [204,204]);
% subplot(2,4,1); imagesc(bestimage);
% subplot(2,4,2); imagesc(reshape(dis_mean(5,:), [204,204]));
% subplot(2,4,3); imagesc(reshape(dis_mean(10,:), [204,204]));
% subplot(2,4,4); imagesc(reshape(dis_mean(15,:), [204,204]));
% subplot(2,4,5); imagesc(reshape(dis_mean(20,:), [204,204]));
% subplot(2,4,6); imagesc(reshape(dis_mean(25,:), [204,204]));
% subplot(2,4,7); imagesc(reshape(dis_mean(30,:), [204,204]));
% subplot(2,4,8); imagesc(reshape(dis_mean(35,:), [204,204]));
