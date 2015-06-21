function t=negros(matriz)
t=[];
contador=1;
[m,n]=size(matriz);
for i=1:m
  for j=1:n
    if(matriz(i,j)==0)
      t=[t contador];
      contador+=1;
    end
  end
end
end
