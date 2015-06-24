function [x,y]=inicial(matriz)
[m,n] = size(matriz);
x=0;
y=0;

for i=1:n
  for j=1:m
    if(matriz(j,i)==0)
      x=i;
      y=j;
      return;
    end
  end
end
