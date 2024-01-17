function [p, crossings] = BuffonSquaresPi(width, length, throws)     
    square_x = zeros(throws, 4);
    square_y = zeros(throws, 4);

    crossings = 0;
    plank_range = [0-width, width*2];

    for i = 1:throws
        square_side_x = rand();
        square_side_y = rand() * width;
        angle = rand() * (2 * pi);

        vertice_above_width = false;
        vertice_below_zero = false;
        vertice_has_crossed = false;

        previous_point_x = square_side_x;
        previous_point_y = square_side_y;

        for side = 1:4
      
            side_x = previous_point_x + (length * (cos(angle + (side-1) * pi/2)));
            side_y = previous_point_y + (length * (sin(angle + (side-1) * pi/2)));
            previous_point_x = side_x;
            previous_point_y = side_y;

            if side_y > width
                vertice_above_width = ~vertice_above_width;
                vertice_has_crossed = true;
            elseif side_y < 0
                vertice_below_zero = ~vertice_below_zero;
                vertice_has_crossed = true;
            end
            
            
            if side_y > plank_range(2) || side_y < plank_range(1)
                crossings = crossings + 4;
                break;
            
            elseif side == 4 && vertice_has_crossed == true
                
                if (vertice_below_zero && vertice_above_width) == true
                    crossings = crossings + 4;
                
                elseif vertice_below_zero == vertice_above_width
                    crossings = crossings + 2;
                
                else
                    crossings = crossings + 2;
                end
            end

            square_x(i, side) = side_x;
            square_y(i, side) = side_y;
        end
    end

    % Sanity check - avoid division by zero
    if crossings > 0
        p = (8 * length * throws) / (crossings * width);
    else
        p = NaN; 
    end
end