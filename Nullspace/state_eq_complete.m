function sd=state_eq_complete(~,s,W,k,n,N)
S=reshape(s,[n N]);
I=eye(n);
Nei=sum(S,2); % sum all states for complete graph
Sd=zeros(n,N);
for i=1:N
    Si=S(:,i);
    Wi=W(:,:,i);
    Sd(:,i)=Wi*Si+k/N*(I-Si*Si')*Nei;
end
sd=reshape(Sd,[n*N 1]);
end
 