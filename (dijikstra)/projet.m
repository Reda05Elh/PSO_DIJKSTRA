
A = [1 1 0 0 1 0 0 0 0 0 0 0 0 0;
     1 1 1 0 1 0 0 0 0 0 0 0 0 0;
     0 1 1 1 0 1 1 0 1 0 1 0 0 0;
     0 0 1 1 1 1 0 0 1 0 0 0 0 0;
     1 1 0 1 1 1 0 0 0 0 0 0 0 0;
     0 0 1 1 1 1 1 0 0 0 0 0 0 0;
     0 0 1 0 0 1 1 1 0 1 1 0 1 0;
     0 0 0 0 0 0 1 1 1 1 1 0 1 0;
     0 0 1 1 1 1 0 1 1 1 1 0 1 0;
     0 0 0 0 0 0 1 1 1 1 1 0 1 0;
     0 0 1 0 0 0 1 1 1 1 1 1 0 1;
     0 0 0 0 0 0 0 0 0 0 1 1 1 1;
     0 0 0 0 0 0 1 1 1 1 0 1 1 1;
     0 0 0 0 0 0 0 0 0 0 1 1 1 1];
n=14;
crd = [0.5 0.5;
         0 1;
         0 2;
         2 2;
         2 1;
         2.5 2.5;
         2.5 3;
         4 3;
         4 2.5;
         4.5 3;
         4.5 5.5;
         6.5 5.5;
         6.5 3;
         7 7];
     % gplot (A, crd, 'o-');
     
   [ nrows , ncols ] = size(A);
   C=zeros(nrows , ncols);
     for col = 1:ncols
         for lin = 1:nrows        
             if A(lin,col)==1
                 x=crd(col,1)-crd(lin,1);
                 y=crd(col,2)-crd(lin,2);
                  C(lin,col) = sqrt(x^2 + y^2); 
        
             end
        
         end
     end
     
     
      [cost,path] = dijkstra(A,C,1,14)

gplot(A,crd,'o-'); hold on; 
%remplissage

x1=[0;0;2;2]
y1=[1;2;2;1]

x2=[2.5;2.5;4;4]
y2=[2.5;3;3;2.5]

x3=[4.5;4.5;6.5;6.5]
y3=[3;5.5;5.5;3]

fill(x1,y1,'y',x2,y2,'y',x3,y3,'y')



plot(crd(path,1),crd(path,2),'ro-','LineWidth',2) 
%for k = 1:n, text(C(k,1),C(k,2),[' ' num2str(k)],'Color','k'); end