 xobs=[1.5 4.0 1 3.5];
    yobs=[4.5 3.0 1 5.0];
    robs=[0.6 0.8 1 0.4];
    long=[1.7 1 0.8 1];
 % Target (Destination)
    xt=5;
    yt=5;  



theta=linspace(pi/4,(3*pi/1.7146),4);
    for k=1:numel(xobs)
        fill(xobs(k)+robs(k)*cos(theta),yobs(k)+long(k)*sin(theta),[0.5 0.7 0.8]);
        hold on;
        plot(xobs(k),yobs(k),'rx')
    end
    hold on
plot(xt,yt,'rx')



    grid on;
    axis equal;