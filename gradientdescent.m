## Copyright (C) 2020 Sid-lappy
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} gradientdescent (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Sid-lappy <Sid-lappy@LAPTOP-HT0LA2LA>
## Created: 2020-10-23

function [theta, J_histroy] = gradientdescent (X, y, theta, alpha, num_iters)
m = length(y);
J_histroy = zeros(num_iters, 1);
for iter = 1:num_iters
theta = theta - (1/m)*(alpha)*(X')*(X*theta-y); 
j_history(iter) = costFunction(X, y, theta);
% fprintf('Value of theta after:%f',iter);
% disp(theta);
end;
endfunction
