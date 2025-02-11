--Directions guide:
-----------
--8  1  2--
--7     3--
--6  5  4--
-----------
function destination_update()
    if btnp(⬅️) then
        if destination.dir > 1 then
            destination.dir -= 1
        else
            destination.dir = 8
        end
    end

    if btnp(➡️) then
        if destination.dir < 8 then
            destination.dir += 1
        else
            destination.dir = 1
        end
    end

    if destination.dir == 1 then
        destination.x = ball.x
        destination.y = ball.y - (ball.move * 8)
    end

    if destination.dir == 2 then
        destination.x = ball.x + (ball.move * 8)
        destination.y = ball.y - (ball.move * 8)
    end

    if destination.dir == 3 then
        destination.x = ball.x + (ball.move * 8)
        destination.y = ball.y
    end

    if destination.dir == 4 then
        destination.x = ball.x + (ball.move * 8)
        destination.y = ball.y + (ball.move * 8)
    end

    if destination.dir == 5 then
        destination.x = ball.x
        destination.y = ball.y + (ball.move * 8)
    end
    
    if destination.dir == 6 then
        destination.x = ball.x - (ball.move * 8)
        destination.y = ball.y + (ball.move * 8)
    end

    if destination.dir == 7 then
        destination.x = ball.x - (ball.move * 8)
        destination.y = ball.y
    end

    if destination.dir == 8 then
        destination.x = ball.x - (ball.move * 8)
        destination.y = ball.y - (ball.move * 8)
    end
end