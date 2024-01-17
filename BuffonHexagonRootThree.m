function [p, crossings] = BuffonHexagonRootThree(width, length, throws)     
    if width < sqrt(2*length^2)
        error("Increase width, since length has to be small enough so that a hexagon doesn't go over 2 cracks")
    end

    hexagon_x = zeros(throws, 4);
    hexagon_y = zeros(throws, 4);

    crossings = 0;
    consecutives = 0; 

    for i = 1:throws
        hexagon_side_x = rand();
        hexagon_side_y = rand() * width;
        angle = rand() * (2 * pi);

        vertice_above_width = false;
        vertice_below_zero = false;
        vertice_has_crossed = false;

        previous_point_x = hexagon_side_x;
        previous_point_y = hexagon_side_y;

        for side = 1:6
      
            side_x = previous_point_x + (length * (cos(angle + (side-1) * pi/3)));
            side_y = previous_point_y + (length * (sin(angle + (side-1) * pi/3)));
            previous_point_x = side_x;
            previous_point_y = side_y;

            if side_y > width
                vertice_above_width = ~vertice_above_width;
                vertice_has_crossed = true;
            elseif side_y < 0
                vertice_below_zero = ~vertice_below_zero;
                vertice_has_crossed = true;
            end
            
            if side == 6 && vertice_has_crossed == true
                
                if vertice_below_zero == vertice_above_width
                    crossings = crossings + 1;

                else
                    crossings = crossings + 1;
                    consecutives = consecutives + 1; 

                end
            end

            hexagon_x(i, side) = side_x;
            hexagon_y(i, side) = side_y;
        end
    end

    % Sanity check - avoid division by zero
    if crossings > 0
        p = 2 - (consecutives/crossings);
    else
        p = NaN; 
    end
end