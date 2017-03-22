function [ rotM ] = rot2d( angle )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    rotM = [[cosd(angle), -sind(angle)],
            [sind(angle),  cosd(angle)]];

end

