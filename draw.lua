function _draw()
    cls()
    map(0,0)
    -- if (btnp(❎)) print("hello")
    spr(ball.sp, ball.x, ball.y, 1, 1)
    spr(flag.sp, flag.x, flag.y, 1, 1)

    for o in all(objs) do o:draw() end

    if dice.rolling then
        spr(dice.sp, dice.x, dice.y, 1, 1)
    end

    if not dice.rolling and ball.move > 0 then
        --draw die in top-left corner
        spr(dice.sp, 0, 0)
        
        -- if destination.dir == 5 then
        --     destination.x = ball.x
        --     destination.y = ball.y + (ball.move * 8)
        -- end

        line(ball.x + 4, ball.y + 4, destination.x + 4, destination.y + 4, 1)

        --draw destination circle
        spr(33, destination.x, destination.y)
    end

    --dice rolling debugs
    -- print(dice.rolling)
    -- print(dice.counter)
    -- print(dice.sp-15)
    -- print(ball.move)
    -------------------

    --destination debugs
    -- print(destination.dir)
    -------------------
end