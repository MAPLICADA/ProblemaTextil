function x = vecinos(i,j,n,m)
x=[];
  if(i<n)
    x=[x i+1 j];
  end
  if(i>1)
    x=[x i-1 j];
  end
  if(j<m)
    x=[x i j+1];
  end
  if(j>1)
    x=[x i j-1];
  end
  if(and(i<n,j<m))
    x=[x i+1 j+1];
  end
  if(and(i<n,j>1))
    x=[x i+1 j-1];
  end
  if(and(i>1,j>1))
    x=[x i-1 j-1];
  end
  if(and(i>1,j<m))
    x=[x i-1 j+1];
  end
  
end
