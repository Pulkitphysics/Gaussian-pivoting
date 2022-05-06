clc
clear
a = [10000,0,-6000;0,12000,-3000;-6000,-3000,21000]
b=[-6;6;0]
anew=a
disp("coefficient matrix: ",a)
disp("result matrix: ",b)
x = zeros(size(b,2),3)
xnew=x
for h=1:1:12
    for i=1:1:size(b,1)
          x(:,i)=[]
          a(:,i)=[]
          s=0
        for j=1:1:size(b,1)-1
            s =  s + a(i,j)*x(j)
        end
        a=anew
        xnew(i) = (b(i,1) - s)/a(i,i)
        x=xnew
    end
end
disp("corresponding values of x is: ",x)

