function ProjectileMotion1
    clf % Clear previous figure
    
    % Parameters
    g = 9.8; % Gravity
    v = 15; % Initial velocity
    h = 2; % Initial height
    alpha = deg2rad(10); % Inclination angle up to 90 degrees
    
    % For time calulations
    TimeSteps = 500; % Number of time steps to solve for
    Tfinal = (v*sin(alpha)+sqrt(v^2*sin(alpha)^2+2*g*h))/g; % Landing Time
    
    % Time span for solving
    tspan = linspace(0,Tfinal,TimeSteps);
    
    % Functions
    x = @(t) t*v*cos(alpha); % x distance
    y = @(t) -t.^2*g/2+t*v*sin(alpha)+h; % y distance
    
    % Plot function and include axis labels
    plot(x(tspan),y(tspan),'b-','linewidth',1.5)
    xlabel('$x$ distance','interpreter','latex')
    ylabel('$y$ distance','interpreter','latex')
    title('Distance travelled by projectile')
    
    % Set x and y limits
    xlim([0 max(x(tspan))]); % max(xtspan)) takes the largest horizontal distance
    ylim([0 max(y(tspan))+1]); % max(xtspan)) takes the largest vertical distance
end