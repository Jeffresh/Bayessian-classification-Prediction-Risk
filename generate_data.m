function [x,y] = generate_data(ma,sa,pa,mb,sb,pb, n)
%GENERATE_DATA Summary of this function goes here
%   Detailed explanation goes here

x=[ma+sa*randn(1,n*pa) mb+sb*randn(1,n*pb)];
y=[ones(1,n*pa) 2*ones(1,n*pb)];

end

