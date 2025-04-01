function[root]=Secant_method(x0,x1,step,epes)
n=1;
er=1;

if h(x0)*h(x1)<0
  while (n< step && er > epes)
      if h(x1)-h(x0)~=0
        x2 = x1 - (h(x1)*(x1-x0)/(h(x1)-h(x0)));
      end
        er= abs ((x2-x1)/x2);
        x0=x1;
        x1=x2;
        n=n+1;
  end
   root=x2
else
    disp('No solution')
end
  
end
