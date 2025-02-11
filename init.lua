objs={}

function objdraw(o)
    spr(o.spr, o.x, o.y)
end

function _init()

    ball = {
        sp=1,
        x,
        y,
        w=8,
        h=8,
        speed=0.5,
        anim=0,
        move=0
    }

    dice = {
        sp=16,
        x=7*8,
        y=7*8,
        w=8,
        h=8,
        anim=0,
        rolling=false,
        counter=15
    }

    flag = {
        sp=32,
        x,
        y,
        w=8,
        h=8
    }
    
    --loop through the map
    --and replace specific objects
    --with the approrpiate sprites
    for x=0,15 do
        for y=0,15 do
            --ball
            if mget(x,y)==1 then
                ball.x=x*8
                ball.y=y*8
                mset(x,y,64)
            end
            --flag
            if mget(x,y)==32 then
                flag.x=x*8
                flag.y=y*8
                mset(x,y,64)
            end
            --trees
            if mget(x,y)==67 then
                newtree(x*8,y*8)
                mset(x,y,65)
            end
        end
    end
end