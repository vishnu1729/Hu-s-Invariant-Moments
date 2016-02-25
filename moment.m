function m = moment(image,mask,p,q)
% Function to calculate any ordinary moment of the intersted image region
% Author:   Vishnu Muralidharan
% University of Alabama in Huntsville

% Inputs:   image: input image for which moments need to be calculated
%           mask: specifying this allows you to calculate moments for a
%           specified region
%           p,q: order of moments to be calculated
% Outputs:  m = moment of the specifed order fot the image
% Reference:  Visual Pattern Recognition by Moment Invariants


if ~exist('mask','var')
    mask = ones(size(image,1),size(image,2));   %if mask is not specified, select the whole image
end

image = double(image);
m=0; 
for i=1:1:size(mask,1)
    for j=1:1:size(mask,2)
        if mask(i,j) == 1
            m = m + (double((image(i,j))*(i^p)*(j^q))) ; %moment calculation
        end
    end
end
