function [x1,x2] = get_boundaries(m1,s1,m2,s2,Pw1, Pw2)
%GET_BOUNDARIES Summary of this function goes here
%   Detailed explanation goes here

A=s1*s1-s2*s2;
B=2*(m1*s2*s2-m2*s1*s1);
C=2*s1*s1*s2*s2*(log(Pw1)-log(Pw2)-log(s1)+log(s2))+s1*s1*m2*m2-s2*s2*m1*m1;

x1=(-B+sqrt(B*B-4*A*C))/2/A % decision boundary on the right
x2=(-B-sqrt(B*B-4*A*C))/2/A % decision boundary on the left

end

