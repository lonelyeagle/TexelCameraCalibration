clear;
clc;
dis_path = '../../tmp/record1/distance_';
intense_path = '../../tmp/record1/intensity_';
dis_final = zeros(1,204*204);
intensity_final = zeros(1,204*204);
for i = 1:10
    data_dis = load(strjoin({dis_path, int2str(i), '.txt'}, ''));
    data_intense = load(strjoin({intense_path, int2str(i), '.txt'}, ''));
    for j = i:204*204
        if (data_intense(j) > intensity_final(j))
            dis_final(j) = data_dis(j);
            intensity_final(j) = data_intense(j);
        end
    end
end
reshape(dis_final, [204,204])
imagesc(reshape(dis_final, [204,204]));