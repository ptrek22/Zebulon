

angles = [[30,  90], %right leg
          [-30,  -90]];%left leg

centerPos = [[2 2]];
angularPos = 30;

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


%cordinates  A2--B2--D2--centerPos--D1--B1--A1
D1  = centerPos + seg1(1,:);
D2  = centerPos + seg1(2,:);
B1  = D1 + seg2(1,:);
B2  = D2 + seg2(2,:);
A1  = B1 + seg3(1,:);
A2  = B2 + seg3(2,:);


figure(1);
hold on;
axis equal;

plot(centerPos(1),centerPos(2), 'MarkerFaceColor', 'b', 'Marker', 'o');
quiver(centerPos(1),centerPos(2), seg1(1,1), seg1(1,2), 'blue');
quiver(centerPos(1),centerPos(2), seg1(2,1), seg1(2,2), 'blue');
plot(D1(1),D1(2), 'MarkerFaceColor', 'b', 'Marker', 'o');
plot(D2(1),D2(2), 'MarkerFaceColor', 'b', 'Marker', 'o');
quiver(D1(1),D1(2), seg2(1,1), seg2(1,2), 'red');
quiver(D2(1),D2(2), seg2(2,1), seg2(2,2), 'red');
plot(B1(1),B1(2), 'MarkerFaceColor', 'b', 'Marker', 'o')
plot(B2(1),B2(2), 'MarkerFaceColor', 'b', 'Marker', 'o')
quiver(B1(1),B1(2), seg3(1,1), seg3(1,2), 'black');
quiver(B2(1),B2(2), seg3(2,1), seg3(2,2), 'black');
plot(A1(1),A1(2), 'MarkerFaceColor', 'b', 'Marker', 'o')
plot(A2(1),A2(2), 'MarkerFaceColor', 'b', 'Marker', 'o')
hold off;
      

      

      