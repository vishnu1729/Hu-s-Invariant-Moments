function inv_moments = Hu_Moments(eta)
% Function to calculate the Hu's moments of interested image region
% Author:   Vishnu Muralidharan
% University of Alabama in Huntsville

% Inputs:   eta: scale-invariant moment matrix of order 3
% Outputs:  inv_moments = array containing 7 invariant Hu's moments
% Reference:  Visual Pattern Recognition by Moment Invariants


%Calculation of various invariant Hu's moments
inv_moments(1) = eta(3,1) + eta(1,3);
inv_moments(2) = (eta(3,1) - eta(1,3))^2 + (4*eta(2,2)^2);
inv_moments(3) = (eta(4,1) - 3*eta(2,3))^2 + (3*eta(3,2) - eta(1,4))^2;
inv_moments(4) = (eta(4,1) + eta(2,3))^2 + (eta(3,1) + eta(1,4))^2;
inv_moments(5) = (eta(4,1) - 3*eta(2,3))*(eta(4,1) + eta(2,3))*((eta(4,1) + eta(2,3))^2 - 3*((eta(3,2) + eta(1,4))^2)) + (3*(eta(3,2) - eta(1,4)))*(eta(3,2) + eta(1,4))*(3*(eta(4,1) + eta(2,3))^2 - (eta(3,2) + eta(1,4))^2);
inv_moments(6) = (eta(3,1) - eta(1,3))*((eta(4,1)+eta(2,3))^2 - (eta(3,2)+ eta(1,4))^2) + 4*eta(2,2)*((eta(4,1) + eta(2,3))*(eta(3,2) + eta(1,4)));
inv_moments(7) = (3*eta(3,2) - eta(1,4))*(eta(4,1) + eta(2,3))*((eta(4,1) + eta(2,3))^2 - 3*(eta(3,2)-eta(1,4))^2) - (eta(4,1) - 3*eta(2,3))*(eta(3,2) + eta(1,4))*(3*(eta(4,1) + eta(2,3))^2 - (eta(3,2) + eta(1,4))^2);