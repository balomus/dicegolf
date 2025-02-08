function _draw()
    cls()
    map(0,0)
    -- if (btnp(❎)) print("hello")
    spr(ball.sp, ball.x, ball.y, 1, 1)

    if dice.rolling then
        spr(dice.sp, dice.x, dice.y, 1, 1)
    end

    print(dice.rolling)
    -- print(time())
    print(dice.counter)
end