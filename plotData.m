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
## @deftypefn plotData (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Sid-lappy <Sid-lappy@LAPTOP-HT0LA2LA>
## Created: 2020-10-23

function plotData (X, y)
figure; % this open a new figure window
plot(X, y, 'rx', 'MarkerSize', 10); % rx here means r for red and x for cross.
ylabel('Profit in $10,000s'); % labelling y axis 
xlabel('Poplulation of city in 10,000s'); %labelling x axis

endfunction
