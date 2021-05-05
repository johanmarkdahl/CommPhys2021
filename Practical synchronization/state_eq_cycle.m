function sd=state_eq_cycle(~,s,W,n,p,N)

S=reshape(s,[n p N]);
nei=[N 1:N 1];
I=eye(n);
for i=1:N
    Neii=S(:,:,nei(i))+S(:,:,nei(i+2));
    Si=S(:,:,i);
    Wi=W(:,:,i);
    if p==n-1
        Sd(:,:,i)=Wi*Si+1/N*Si*(Si'*Neii-Neii'*Si)+1/N*(I-Si*Si')*Neii;
%    elseif p==n
%        Sd(:,:,i)=Wi*Si+Si*(Si'*Neii-Neii'*Si);
    elseif p==1
        Sd(:,:,i)=Wi*Si+1/N*(I-Si*Si')*Neii;
    end
end
sd=reshape(Sd,[n*p*N 1]);
end

 