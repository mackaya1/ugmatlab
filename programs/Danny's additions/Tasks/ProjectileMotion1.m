function ProjectileMotion1
    clf % Clear previous figure
    
    % Parameters
    g = 9.8; % Gravity
    v = $ % Initial velocity
    h = $ % Initial height
    alpha = deg2rad($); % Inclination angle up to 90 degrees
    
    % For time calulations
    TimeSteps = 500; % Number of time steps to solve for
    Tfinal = $; % Landing Time
    
    % Time span for solving
    tspan = linspace(0,Tfinal,TimeSteps);
    
    % Functions
    x = @(t) $ % x distance
    y = @(t) $ % y distance
    
    % Plot function and include axis labels
    plot(x(tspan),y(tspan),'b-','linewidth',1.5)
    xlabel('$x$ distance','interpreter','latex')
    ylabel('$y$ distance','interpreter','latex')
    title('Distance travelled by projectile')
    
    % Set x and y limits
    xlim([0 max(x(tspan))]); % max(xtspan)) takes the largest horizontal distance
    ylim([0 max(y(tspan))+1]); % max(xtspan)) takes the largest vertical distance
end