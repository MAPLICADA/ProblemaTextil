x=0:0.01:10;
for i=1:15
figure(i);
plot(x,(1/4)*sin((i/4)*x));
axis([0 10 -1 1])
box off
axis off
h=num2str(i);
nombre=strcat("nueva",h,".png");
print ("-dpng", nombre)
end