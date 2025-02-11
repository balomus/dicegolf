function newtree(x,y)
    local t = {
        x=x, y=y,
        spr=67,
        draw=objdraw
    }
    add(objs, t)
    return t
end