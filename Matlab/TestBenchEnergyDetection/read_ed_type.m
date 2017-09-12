function [ Y D ] = read_ed_type( filename )
%READ_ED_TYPE Summary of this function goes here
%   Detailed explanation goes here

file = fopen(filename,'rb');

X =fread(file, [2,inf], 'uint32');

D = X(1,:);
Y = X(2,:);

fclose(file);

end

