function model=CreateModel()
    % Source
    xs=0;
    ys=0;
    % Target (Destination)
    xt=5;
    yt=5;
    
 xobs=[1.5 4.0 1 3.5];
    yobs=[4.5 3.0 1 5.0];
    robs=[0.6 1 0.8 0.4];
    long=[1.7 1 0.8 1];
   
    n=numel(xobs)-2;
    xmin=-10;
    xmax= 10;
    ymin=-10;
    ymax= 10;
    
    model.xs=xs;
    model.ys=ys;
    model.xt=xt;
    model.yt=yt;
    model.xobs=xobs;
    model.yobs=yobs;
    model.robs=robs;
    model.long=long;
    model.n=n;
    model.xmin=xmin;
    model.xmax=xmax;
    model.ymin=ymin;
    model.ymax=ymax;
end