s = serial('COM6');


data = [0 -20 0;
        0 -20 0;
        0 -20 0;
        0 -20 0;
        0 -20 0;
        0 -20 0;
        0 -20 0;
        0 -20 0;];
    
fopen(s);
updateAll(s,data);
%fclose(s);