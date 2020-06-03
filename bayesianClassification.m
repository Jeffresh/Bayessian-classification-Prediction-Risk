%% a)
clc;
clear;
close all;


%b)
ma = 20;
sa = 3;

mb = 25;
sb = 2;

n = 5000;


%% c)

%a)

randn('seed',0);

pa = 0.5;
pb = 0.5;

x=[ma+sa*randn(1,n*pa) mb+sb*randn(1,n*pb)];
y=[ones(1,n*pa) 2*ones(1,n*pb)];

indices1=find(y==1); indices2=find(y==2);
m1=mean(x(indices1)); m2=mean(x(indices2));
s1=std(x(indices1)); s2=std(x(indices2));
Pw1=length(indices1)/length(y);
Pw2=length(indices2)/length(y);

A=s1*s1-s2*s2;
B=2*(m1*s2*s2-m2*s1*s1);
C=2*s1*s1*s2*s2*(log(Pw1)-log(Pw2)-log(s1)+log(s2))+s1*s1*m2*m2-s2*s2*m1*m1;
x1=(-B+sqrt(B*B-4*A*C))/2/A
x2=(-B-sqrt(B*B-4*A*C))/2/A
I=-40:0.01:40;plot(I,Pw1*normpdf(I,m1,s1));hold on;
plot(I,Pw2*normpdf(I,m2,s2),'r');hold off;

%% d)

randn('seed',0);

pa = 0.7;
pb = 0.3;

x=[ma+sa*randn(1,n*pa) mb+sb*randn(1,n*pb)];
y=[ones(1,n*pa) 2*ones(1,n*pb)];

indices1=find(y==1); indices2=find(y==2);
m1=mean(x(indices1)); m2=mean(x(indices2));
s1=std(x(indices1)); s2=std(x(indices2));
Pw1=length(indices1)/length(y);
Pw2=length(indices2)/length(y);

A=s1*s1-s2*s2;
B=2*(m1*s2*s2-m2*s1*s1);
C=2*s1*s1*s2*s2*(log(Pw1)-log(Pw2)-log(s1)+log(s2))+s1*s1*m2*m2-s2*s2*m1*m1;
x1=(-B+sqrt(B*B-4*A*C))/2/A
x2=(-B-sqrt(B*B-4*A*C))/2/A
I=x1-10:0.1:x2+10;plot(I,Pw1*normpdf(I,m1,s1));hold on;
plot(I,Pw2*normpdf(I,m2,s2),'r');hold off;


%% e)



randn('seed',0);

pa = 0.3;
pb = 0.7;

x=[ma+sa*randn(1,n*pa) mb+sb*randn(1,n*pb)];
y=[ones(1,n*pa) 2*ones(1,n*pb)];

indices1=find(y==1); indices2=find(y==2);
m1=mean(x(indices1)); m2=mean(x(indices2));
s1=std(x(indices1)); s2=std(x(indices2));
Pw1=length(indices1)/length(y);
Pw2=length(indices2)/length(y);

A=s1*s1-s2*s2;
B=2*(m1*s2*s2-m2*s1*s1);
C=2*s1*s1*s2*s2*(log(Pw1)-log(Pw2)-log(s1)+log(s2))+s1*s1*m2*m2-s2*s2*m1*m1;
x1=(-B+sqrt(B*B-4*A*C))/2/A
x2=(-B-sqrt(B*B-4*A*C))/2/A
I=x1-80:0.1:x2+80;plot(I,Pw1*normpdf(I,m1,s1));hold on;
plot(I,Pw2*normpdf(I,m2,s2),'r');hold off;
