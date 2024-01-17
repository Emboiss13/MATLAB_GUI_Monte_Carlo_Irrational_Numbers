function [p, crossings] = BuffonStandardPi(width, length, throws)
    crossings = 0;

    for i = 1:throws
        
        needle_centre_x = rand();
        needle_centre_y = rand() * width;

        
        angle = rand() * (2 * pi);    

        needle_x1 = needle_centre_x + (1/2 * length) * cos(angle);
        needle_y1 = needle_centre_y + (1/2 * length) * sin(angle);
        needle_x2 = needle_centre_x - (1/2 * length) * cos(angle);
        needle_y2 = needle_centre_y - (1/2 * length) * sin(angle);

        % Check if the needle crosses a plank
        if needle_y1 > width || needle_y1 < 0 || needle_y2 > width || needle_y2 < 0
            crossings = crossings + 1;
        end
    end

    % Sanity check - avoid division by zero
    if crossings > 0
        p = (2 * length * throws) / (crossings * width);
    else
        p = NaN; 
    end
end