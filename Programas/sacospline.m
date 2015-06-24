function [x,y,t] = sacospline(matriz)
t=negros(matriz);
[m,n] = size(matriz);
[x(1,1), y(1,1)]=inicial(matriz);

u=vecinos(x(1,1),y(1,1),n,m);
  for i=1:length(u)/2
    if(matriz(u(2*i),u(2*i-1))==0)
      x(1,2)=u(2*i-1);
      y(1,2)=u(2*i);
    end
  end

for h=2:t(end)-1
  #h es para avanzar en tiempo. u, v listas de vecinos.
  u=vecinos(x(1,h),y(1,h),n,m);
  veci=size(u,2);
  for i=1:veci/2
    if(matriz(u(1,2*i),u(1,2*i-1))==0)
      if(or(u(1,2*i-1)~=x(1,h-1), u(1,2*i)~=y(1,h-1)))
      x(1,h+1)=u(1,2*i-1);
      y(1,h+1)=u(1,2*i);
      end
    end
  end

end
