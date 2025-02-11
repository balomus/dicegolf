function dice_update()
    if (btnp(❎) and dice.rolling == false and ball.move <= 0) then
        dice.rolling=true
    end

    dice_roll()
end

function dice_roll()
    if dice.rolling then
        if time()-dice.anim>0.1 then
            dice.anim=time()
            dice.sp = flr(rnd(6)) + 16
            dice.counter -= 1
        end
    end

    if dice.counter <= 0 then
        dice.rolling = false
        dice.counter = 15
        ball.move = dice.sp - 15
    end

end