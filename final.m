%s = 10;
%Y1 = zeros(s,1);
%Y2 = zeros(s,1);

%X = 1:10
%for c = 1:s
    %Y1(c) = Demo_CS_OMP(c*.1);
    %Y2(c) = Demo_CS_CoSaMP(c*.1);
%end
%plot(X,Y1,X,Y2)

Demo_CS_OMP(0)
%Demo_CS_CoSaMP(0)

