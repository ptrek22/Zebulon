function [  ] = updateAll(s,servoPositons)
%Sets all chanels according to servoPositions matrix

%Servo travel (max range)
servoRange = 189.5; %[deg]

%Offset - value that corresponds to 0 deg servo positon
offset = 1500; 
%controller bit resolution
bitRes = 14;




%Set multiple channels command (0x9f);
fwrite(s,159);
%Number of channels to set 
fwrite(s, size(servoPositons,1 )*size(servoPositons,2));


firstChannel = 0; 

fwrite(s, firstChannel);


for i = 1:size(servoPositons,1)
    for j = 1:size(servoPositons,2)
        
        toSend = 4*offset  + ((2^(bitRes)-1)/(servoRange)) * servoPositons(i,j);
        lower7bits = mod(toSend, 2^7)
        higher7bits = toSend / 2^7
        
        fwrite(s, lower7bits);
        fwrite(s, higher7bits);
    end
end

end

