function [x y]=vecinos(i,j,n,m)
x=[];
y=[];
  if(i<n)
    x=[x i+1];
    y=[y j];
  end
  if(i>1)
    x=[x i-1];
    y=[y j];
  end
  if(j<m)
    x=[x i];
    y=[y j+1];
  end
  if(j>1)
    x=[x i];
    y=[y j-1];
  end
  if(and(i<n,j<m))
    x=[x i+1];
    y=[y j+1];
  end
  if(and(i<n,j>1))
    x=[x i+1];
    y=[y j-1];
  end
  if(and(i>1,j>1))
    x=[x i-1];
    y=[y j-1];
  end
  if(and(i>1,j<m))
    x=[x i-1];
    y=[y j+1];
  end
end
