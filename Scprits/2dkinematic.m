

angles = [[0,  0],
          [0,  0]];

centerPos = [0 0];
angularPos = 0;

seg1 = [[cosd(0), sind(0)],
        [cosd(180), sind(180)]];
    
seg2 = [[cosd(0), sind(0)],
        [cosd(180), sind(180)]];
    
seg3 = [[cosd(0), sind(0)],
        [cosd(180), sind(180)]];

seg1 = seg1 * rot2d(angularPos);
seg2 = seg2 * rot2d(angularPos);
seg3 = seg3 * rot2d(angularPos);

for i = 1:length(seg2)
    seg2(i,:) = seg2(i,:) * rot2d(angles(i,1));
    seg3(i,:) = seg3(i,:) * rot2d(angles(i,1));
end;

for i = 1:length(seg3)
    seg3(i,:) = seg3(i,:) * rot2d(angles(i,2));
end;

figure(1);
hold on;
quiver(centerPos(1), centerPos(2), seg1(:,1), seg1(:, 2));
      

      

      