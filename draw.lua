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

    --dice rolling debugs
    -- print(dice.rolling)
    -- print(dice.counter)
    -- print(dice.sp-15)
    -- print(ball.move)
    -------------------
    
    if (ball.move > 0) then
        
    end
end