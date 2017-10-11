function MovieMaker

    % Options
    fps = 20; % Frames per second
    VideoName = 'Projectile.avi'; % Name of video file
    DeleteFrames = 'yes'; % Choose whether to delete the frames or not
    
    % Reads the directory, counts the number of images
    a = dir(['Images' '/*.png']);
    NumberImages = size(a,1);
    
    % Opens the videowriter and reads the options
    v = VideoWriter(VideoName); v.FrameRate = fps;
    open(v)
    
    % Loop through and create the video
    for i = 1:NumberImages
        img = imread(['Images/' num2str(i,'%03d') '.png']);
        writeVideo(v,img); % Writes video
        
        switch DeleteFrames
            case 'yes'
                delete(['Images/' num2str(i,'%03d') '.png'])
            otherwise
        end
        
    end
    
    % Close the videowriter
    close(v)
end