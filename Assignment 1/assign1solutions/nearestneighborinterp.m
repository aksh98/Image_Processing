clear all
close all
% I1 = imread('cameraman.tif');
% I1 = round(rand(2,2));
I1 = [2,3;4,5];
M1 = size(I1,1); % Number of rows in I
N1 = size(I1,2); % Number of columns in I
% Pick size of output image
c = 2;
M2 = c*M1;
N2 = c*N1;
I2 = zeros(M2,N2); % Allocate output image
cx = N2/N1; % Scale in x
cy = M2/M1; % Scale in y
for x=1:N2     % rows in output
 for y=1:M2    % columns in output 
 % Calculate position of output grid oordinates in input grid
 v = x/cx;     
 w = y/cy;

 % We'll just pick the nearest neighbor to (v,w)
 v = round(v);
 w = round(w);

 I2(x,y) = I1(v,w);
 end
end
imshow(I2,[])

