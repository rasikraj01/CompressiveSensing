function hat_x=cs_omp(y,T_Mat,m)
% y=T_Mat*x, T_Mat is n-by-m
% y - measurements
% T_Mat - combination of random matrix and sparse representation basis
% m - size of the original signal
% the sparsity is length(y)/4

n=length(y);
s=floor(n/4);                                     
hat_x=zeros(1,m);                                                    
Aug_t=[];                                         
r_n=y;                                            

for times=1:s;                                  
    product=abs(T_Mat'*r_n);

    [val,pos]=max(product);                       
    Aug_t=[Aug_t,T_Mat(:,pos)];                   
    T_Mat(:,pos)=zeros(n,1);                      
    aug_x=(Aug_t'*Aug_t)^(-1)*Aug_t'*y;          
    r_n=y-Aug_t*aug_x;                          
    pos_array(times)=pos;                         

end
hat_x(pos_array)=aug_x;