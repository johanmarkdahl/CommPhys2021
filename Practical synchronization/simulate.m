function simulate(n,p,N,T)

M=10000;
R=zeros(M,1);
tspan=[0 T];
parfor j=1:M
    S0=zeros(n,p,N);
    W=zeros(n,n,N);
    for i=1:N
        X=randn(n,p);
        S0i=X*inv(sqrtm(X'*X));
        S0(:,:,i)=S0i;
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
        end
        Wi=randn(n,n);
        Wi=Omega+1/sqrt(2)*(Wi-Wi')/N^2;
        W(:,:,i)=Wi;
    end
    s0=reshape(S0,[n*p*N 1]);
    % this is how you shape back: S02=reshape(s0,[n p N])
    [~,Sout]=ode45(@(t,s)state_eq_cycle(t,s,W,n,p,N),tspan,s0);
    ST=Sout(end,:);
    ST=reshape(ST,[n p N]);
    
    R(j)=norm(1/N*1/p*sum(ST,3),'fro');
end

N
n
p
mean(R(R<=1.1))
sum(R>1.1)
disp('-------------------------------------')
end