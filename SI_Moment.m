function eta = SI_Moment(image, mask)
% Function to calculate the scale-invariant moment of interested image region
% Author:   Vishnu Muralidharan
% University of Alabama in Huntsville

% Inputs:   image: image: input image for which moments need to be calculated
%           mask: specifying this allows you to calculate moments for a
%           specified region
%           
% Outputs:  cen_mmt = central moment of the specifed order fot the image
% Reference:  Visual Pattern Recognition by Moment Invariants


image = double(image);
if ~exist('mask','var')
    mask = ones(size(image,1),size(image,2)); %if mask is not defined select the whole image
end

% computation of central moments upto order order 3
for i=1:1:4
    for j=1:1:4
        nu(i,j) = Centr_Moment(image, mask,i-1,j-1);
    end
end

% computation of scale invariant moments using central monets of upto order
% 3
eta = zeros(3,3);
for i=1:1:4
    for j=1:1:4
        if i+j >= 4
            eta(i,j) = (double(nu(i,j))/(double(nu(1,1)).^(double((i+j)/2)))); %scale invariant moment matrix
        end
    end
end