%%  Generate data for two different classes using normal distribution
clc;
clear;
close all;

ma = 20;
sa = 3;

mb = 25;
sb = 2;

n = 5000;

%% Supposing same probability

randn('seed',0);

pa = 0.5;
pb = 0.5;

% Generate data set

[x,y] = generate_data(ma,sa,pa,mb,sb,pb,n);

% numer of elements of each class
indices1=find(y==1); indices2=find(y==2);

%gets mean and std of each lass
m1=mean(x(indices1)); m2=mean(x(indices2));
s1=std(x(indices1)); s2=std(x(indices2));
% gets prior probability of each class
Pw1=length(indices1)/length(y);
Pw2=length(indices2)/length(y);

% gets conditional probability - likehood using Gaussian distribution
% Compute the decision boundary
A=s1*s1-s2*s2;
B=2*(m1*s2*s2-m2*s1*s1);
C=2*s1*s1*s2*s2*(log(Pw1)-log(Pw2)-log(s1)+log(s2))+s1*s1*m2*m2-s2*s2*m1*m1;
x1=(-B+sqrt(B*B-4*A*C))/2/A % decision boundary on the right side
x2=(-B-sqrt(B*B-4*A*C))/2/A % decision boundary on the left side
I=-40:0.01:40;plot(I,Pw1*normpdf(I,m1,s1));hold on;
plot(I,Pw2*normpdf(I,m2,s2),'r');hold off;

%% d)

randn('seed',0);

pa = 0.7;
pb = 0.3;

[x,y] = generate_data(ma,sa,pa,mb,sb,pb,n);


indices1=find(y==1); indices2=find(y==2);
m1=mean(x(indices1)); m2=mean(x(indices2));
s1=std(x(indices1)); s2=std(x(indices2));
Pw1=length(indices1)/length(y);
Pw2=length(indices2)/length(y);

A=s1*s1-s2*s2;
B=2*(m1*s2*s2-m2*s1*s1);
C=2*s1*s1*s2*s2*(log(Pw1)-log(Pw2)-log(s1)+log(s2))+s1*s1*m2*m2-s2*s2*m1*m1;
x1=(-B+sqrt(B*B-4*A*C))/2/A % decision boundary on the right
x2=(-B-sqrt(B*B-4*A*C))/2/A % decision boundary on the left
I=x1-10:0.1:x2+10;plot(I,Pw1*normpdf(I,m1,s1));hold on;
plot(I,Pw2*normpdf(I,m2,s2),'r');hold off;


%% e)



randn('seed',0);

pa = 0.3;
pb = 0.7;

[x,y] = generate_data(ma,sa,pa,mb,sb,pb,n);

indices1=find(y==1); indices2=find(y==2);
m1=mean(x(indices1)); m2=mean(x(indices2));
s1=std(x(indices1)); s2=std(x(indices2));
Pw1=length(indices1)/length(y);
Pw2=length(indices2)/length(y);

A=s1*s1-s2*s2;
B=2*(m1*s2*s2-m2*s1*s1);
C=2*s1*s1*s2*s2*(log(Pw1)-log(Pw2)-log(s1)+log(s2))+s1*s1*m2*m2-s2*s2*m1*m1;
x1=(-B+sqrt(B*B-4*A*C))/2/A % decision boundary on the right
x2=(-B-sqrt(B*B-4*A*C))/2/A % decision boundary on the left
I=x1-80:0.1:x2+80;plot(I,Pw1*normpdf(I,m1,s1));hold on;
plot(I,Pw2*normpdf(I,m2,s2),'r');hold off;

%% f) 

% is not symetrical, in c our boundaries are:
x1 = 33.8638;
x2 = 22.5118;

% in d are :

x1d = 33.3597;
x2d = 23.4963;

% in f are:
x1f = 35.1978;
x2f = 21.6353;

variation1 = sqrt((x1-x1d)^2+(x2-x2d)^2)
variation2 = sqrt((x1-x1f)^2+(x2-x2f)^2)

% The variation is not equal
