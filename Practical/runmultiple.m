clear,clc,close all

n=2;
p=1;
T=200;

for N=2:40
    simulate(n,p,N,T)
end