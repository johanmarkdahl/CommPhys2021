function simulate(k,n,N)

M=1000;
R=zeros(M,1);
if k<=0
    T=10; % to long simulation term leads to numerical issue in this range
elseif k<=2
    T=200; % simulate long time because convergence is slow
else
    T=20; % convergence is resonably fast for k in larger than 0.02
end
tspan=[0 T];

if n==2
    Omega=[0  1
        -1  0];
elseif n==3
    Omega=[0  1 1
        -1  0 1
        -1 -1 0];
elseif n==4
    Omega=[0  1  1 1
        -1  0  1 1
        -1 -1  0 1
        -1 -1 -1 0];
elseif n==5
    Omega=[0  1  1  1 1
        -1  0  1  1 1
        -1 -1  0  1 1
        -1 -1 -1  0 1
        -1 -1 -1 -1 0];
elseif n==6
    Omega=[ 0  1  1  1  1 1
        -1  0  1  1  1 1
        -1 -1  0  1  1 1
        -1 -1 -1  0  1 1
        -1 -1 -1 -1  0 1
        -1 -1 -1 -1 -1 0];
end

parfor j=1:M
    S0=zeros(n,N);
    W=zeros(n,n,N);
    for i=1:N
        S1=randn(n,1);
        S0(:,i)=S1/norm(S1,2);
        if i==1
            Wi=randn(n);
            Wi=Omega+1/sqrt(2)*(Wi-Wi');
            W(:,:,i)=Wi;
        else
            W(:,:,i)=randn(1)*W(:,:,1);
        end
    end
    s0=reshape(S0,[n*N 1]);
    [~,Sout]=ode45(@(t,s)state_eq_complete(t,s,W,k,n,N),tspan,s0);
    S=reshape(Sout(end,:),[n N]);
    R(j)=norm(1/N*sum(S(:,:,end),3),'fro');
end

k
mean(R(R<=1.1))
sum(R>1.1)
disp('-------------------------------------')

end