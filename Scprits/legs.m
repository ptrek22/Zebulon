
close all;
%%Frame model

angles = [[30, -60, 60],
          [0, -60, -60]
          [0, -60, -60]
          [0, -60, -60]
          [0, -60, -60]
          [0, -60, -60]];
  
base_o = zeros(6,3);

base = [[cosd(0), sind(0), 0];
        [cosd(60), sind(60), 0];
        [cosd(120), sind(120), 0];
        [cosd(180), sind(180), 0];
        [cosd(240), sind(240), 0];
        [cosd(300), sind(300), 0]];
    
%constant, specifies relative,  posiotion of two fixed servos
seg1 =[[cosd(0), sind(0), 0];
        [cosd(60), sind(60), 0];
        [cosd(120), sind(120), 0];
        [cosd(180), sind(180), 0];
        [cosd(240), sind(240), 0];
        [cosd(300), sind(300), 0]];
    
 
seg2 = [[cosd(0), sind(0), 0];
        [cosd(60), sind(60), 0];
        [cosd(120), sind(120), 0];
        [cosd(180), sind(180), 0];
        [cosd(240), sind(240), 0];
        [cosd(300), sind(300), 0]];

seg3 = [[cosd(0), sind(0), 0];
        [cosd(60), sind(60), 0];
        [cosd(120), sind(120), 0];
        [cosd(180), sind(180), 0];
        [cosd(240), sind(240), 0];
        [cosd(300), sind(300), 0]];


%%Motion on first joint
    for i = 1:length(seg1)
        seg1(i,:) = seg1(i,:) * rotz(angles(i,1));
        seg2(i,:) = seg2(i,:) * rotz(angles(i,1));
        seg3(i,:) = seg3(i,:) * rotz(angles(i,1));
    end
    
%%Motion on second joint
 for i = 1:length(seg2)
        anglexy = (360/(2*pi))*atan2(seg2(i,2),seg2(i,1)); %angle between vector projection on XY plane and X axis
        rotM = rotz(anglexy)*roty(angles(i,2))*rotz(-anglexy);
        seg2(i,:) = seg2(i,:) * rotM;
        seg3(i,:) = seg3(i,:) * rotM;
 end

 %%Motion on third joint
 for i = 1:length(seg3)
        anglexy = (360/(2*pi))*atan2(seg3(i,2),seg3(i,1)); %angle between vector projection on XY plane and X axis
        rotM = rotz(anglexy)*roty(angles(i,3))*rotz(-anglexy);
        seg3(i,:) = seg3(i,:) * rotM;
 end
 
%plot
figure(1);
hold on;
axis equal;
quiver3(base_o(:,1) ,                  base_o(:,2),                   base_o(:,3),                   base(:,1), base(:,2), base(:,3), 0);
quiver3(base(:,1),                     base(:,2),                     base(:,3),                     seg1(:,1), seg1(:,2), seg1(:,3),0);
quiver3(base(:,1)+seg1(:,1),           base(:,2)+seg1(:,2),           base(:,3)+seg1(:,3),           seg2(:,1), seg2(:,2), seg2(:,3),0);
quiver3(base(:,1)+seg1(:,1)+seg2(:,1), base(:,2)+seg1(:,2)+seg2(:,2), base(:,3)+seg1(:,3)+seg2(:,3), seg3(:,1), seg3(:,2), seg3(:,3),0);
grid;
hold off;
