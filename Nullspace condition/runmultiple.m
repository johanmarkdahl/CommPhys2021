clear,clc,close all

N=100;
n=3; % n is the dimension of the embedding space
vec=[-10:1:0 0.25:0.25:2 2.5:0.5:10];

for k=vec
    simulate(k,n,N)
end