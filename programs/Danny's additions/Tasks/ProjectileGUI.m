function ProjectileGUI
    % Graphical user interface for the projectile solver

    % This sets up the initial figure to place the GUI inside
    S.f = figure('units','normalized','name','Projectile Motion Solver',...
        'menubar','none','numbertitle','off','resize','off');
    
    % Set up axis for options
    axOptions = axes('units','normalized','position',[0 0 1 1]);
    
    % Title Text
    text(0.1,0.95,'Options','fontsize',14,'units','normalized');
    
    % Initial Height
    text(0.01,0.875,'Initial Height','fontsize',10,'units','normalized');
    S.Height = uicontrol('style','edit','unit','normalized','position',...
        [0.18,0.85,0.1,0.05],'fontsize',10,'string','2');
    
    % Initial Velocity
    text(0.01,0.8,'Initial Velocity','fontsize',10,'units','normalized');
    S.Velocity = uicontrol('style','edit','unit','normalized','position',...
        [0.18,0.775,0.1,0.05],'fontsize',10,'string','10');
    
    % Angle
    text(0.1,0.725,'Angle','fontsize',11,'units','normalized');
    S.AngleBox = uicontrol('style','edit','units','normalized','position',...
        [0.225,0.65,0.07,0.05],'fontsize',10,'string','15');
    S.Angle = uicontrol('style','slider','units','normalized','min',0,...
        'max',90,'value',15,'position',[0.01,0.65,0.2,0.05],'sliderstep',[1/90 1/90]);
    set(S.Angle,'callback',{@AngleCallBack,S});
    
    % Turn the axis off so that we can see the plotting axis better
    axis off
    
    % Set up axis for plotting
    S.ax = axes('units','normalized','position',[0.45 0.4 0.525 0.525]);
    xticks([]); yticks([]); % Initially removing labels from plot
     
    % Run code
    S.Run = uicontrol('style','pushbutton','unit','normalized','position',...
        [0.075,0.45,0.15,0.05],'fontsize',10,'string','Run','callback',...
        {@Run,S});
end

function [] = Run(varargin)
    S = varargin{3}; % Reads the list
    
    % Get values for projectile motion
    alpha = get(S.Angle,'val'); % Obtain angle from slider bar
    h = str2double(get(S.Height,'string')); % Convert string to number
    v = str2double(get(S.Velocity,'string')); % Get velocity
    
    % Find x and y data for projectile motion
    [x,y] = ProjectileMotion(h,v,alpha,9.8);
    
    % Plot function and include axis labels
    plot(x,y,'b-','linewidth',1.5)
    xlabel('$x$ distance','interpreter','latex')
    ylabel('$y$ distance','interpreter','latex')
    title('Distance travelled by projectile')
    
    % Set x and y limits
    xlim([0 max(x)]); % Takes the largest horizontal distance
    ylim([0 max(y)+1]); % Takes the largest vertical distance
end

function [x,y] = ProjectileMotion(h,v,alpha,g)
    % Parameters
    alpha = deg2rad(alpha); % Convert degrees to radians
    TimeSteps = 500; % Number of time steps to solve for
    Tfinal = (v*sin(alpha)+sqrt(v^2*sin(alpha)^2+2*g*h))/g;
    
    % Time span for solving
    t = linspace(0,Tfinal,TimeSteps);
    
    % Functions
    x = t*v*cos(alpha); % x distance
    y = -t.^2*g/2+t*v*sin(alpha)+h; % y distance
end

function [] = AngleCallBack(varargin)
    S = varargin{3}; % Reads the list
    angle = get(S.Angle,'val'); % Finds the value from the slider bar
    S.AngleBox.String = num2str(angle); % Updates the angle box
end