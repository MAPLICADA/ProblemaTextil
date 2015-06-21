function [x,y,t] = sacospline(matriz)
t=negros(matriz);
t(end)
[m,n] = size(matriz);
x(1)=0;
y(1)=0;
for i=1:n
  for j=1:m
    if(and(matriz(j,i)==0,x(1)==0,y(1)==0))
      x(1)=i;
      y(1)=j;
    end
  end
end

[u v]=vecinos(x(1),y(1),n,m);
  for i=1:length(u)
    if(matriz(v(i),u(i))==0)
      x(2)=u(i);
      y(2)=v(i);
    end
  end
  x
  y
for h=3:t(end)
  #h es para avanzar en tiempo. u, v listas de vecinos.
  [u v]=vecinos(x(h-1),y(h-1),n,m)
  for i=1:length(u)
    if(and(matriz(v(i),u(i))==0,[u(i) v(i)]~=[x(h-2) y(h-2)]))
      x(h)=u(i);
      y(h)=v(i);
    end
  end

end
