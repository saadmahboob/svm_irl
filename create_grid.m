%gridworld
function create_grid()
plot_on=0;
if plot_on
    f1=figure(1);
    x = [1:grid_size+1];
    y = [1:grid_size+1];
    [X,Y] = meshgrid(x,y);
    %Note that size(Z) is the same as size(x) and size(y)
    Z=zeros(grid_size+1,grid_size+1);
    Z(grid_size,grid_size)=2;
    Z(1,1)=-1;%robot state
    % create a colormap having RGB values of dark green,
    % blue (robot), white(free space), black (obstacle), green (goal)
    map1= [0 0 1;1 1 1;0 0 0;0,1,0;];
    %use the user defined colormap for figure.
    colormap(map1);
    %plot the figure
    pcolor(X,Y,Z);
    title('grid world initialized');
    %set the color limits
    caxis([-1 2]);
    % subplot(2,2,2);
    f2=figure(2);
    title('ground truth reward');
    colormap gray
    cmap = (colormap) %get current colormap
    cmap=cmap([1 64],:); % set your range here
    colormap(cmap); % apply new colormap
    pcolor(X,Y,reward);
    title('ground truth reward function');
end
end