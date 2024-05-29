

iraq_regions = readgeotable('C:/Users/ruhda/Downloads/irq-administrative-divisions-shapefiles/irq_admbnda_adm3_cso_20190603.shp');

alBasrahData = iraq_regions(iraq_regions.ADM1_EN == "Al-Basrah", :);
unique_cities = unique(alBasrahData.ADM3_EN);
figure
for i = 1:length(unique_cities)
    current_city = unique_cities{i};
    city_data = alBasrahData(alBasrahData.ADM3_EN == current_city, :);
    if strcmp(current_city, 'Al-Hartha')
        geoplot(city_data, 'FaceColor', 'y', 'EdgeColor', 'k'); % Highlight 'Um Qasr' in red
    else
        geoplot(city_data, 'FaceColor', 'b', 'EdgeColor', 'k'); % Other cities in blue
    end
    
    hold on
%     text(centroid_x, centroid_y, current_city, 'Color', 'k', 'FontSize', 8, 'HorizontalAlignment', 'center');

end

% geobasemap('darkwater')
title("Geographical Boundaries of Cities in Al-Basrah Region")
hold off

% 
% 




