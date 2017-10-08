function ProjectileMotion2a
    clf % Clear previous figure
    
    % Parameters
    gEarth = 9.8; % Gravity on Earth
    gMoon = 1.622; % Gravity on the Moon
    v = 15; % Initial velocity
    h = 2; % Initial height
    alpha = deg2rad(10); % Inclination angle up to 90 degrees
    
    % For time calulations
    TimeSteps = 200; % Number of time steps to solve for
    Tfinal = (v*sin(alpha)+sqrt(v^2*sin(alpha)^2+2*gEarth*h))/gEarth; % Landing Time
    TfinalMoon = (v*sin(alpha)+sqrt(v^2*sin(alpha)^2+2*gMoon*h))/gMoon;
    
    % Time span for solving
    tspan = linspace(0,Tfinal,TimeSteps);
    tspanMoon = linspace(0,TfinalMoon,TimeSteps);
    
    % Functions
    x = @(t) t*v*cos(alpha); % x distance
    y = @(t,g) -t.^2*g/2+t*v*sin(alpha)+h; % y distance
    
    for i = 1:length(tspan)
    
        % Vector of time steps up to time tspan(i)
        T(i) = tspan(i);
        Tmoon(i) = tspanMoon(i);
        
        % Plot function and include axis labels
        hold on
        p1 = plot(x(T),y(T,gEarth),'b-','linewidth',1.5);
        p2 = plot(x(Tmoon),y(Tmoon,gMoon),'r-','linewidth',1.5);
        
        drawnow
        
        % Set x and y limits to keep axis fixed
        xlim([0 max(x(tspanMoon))]); % max(xtspan)) takes the largest horizontal distance
        ylim([0 max(y(tspan,gMoon))+1]); % max(xtspan)) takes the largest vertical distance

        xlabel('$x$ distance','interpreter','latex')
        ylabel('$y$ distance','interpreter','latex')
        title('Distance travelled by projectile')
        
    end

    
end