function love.load()
    --bois = love.graphics.newImage("bois.jpg")
    love.window.maximize()
    --print("Resim Tanımlandı")
end

  local val = 0;
  local x = 0;
  local y = 0;
  local z = 0;
function love.update(dt)

    function up()
        z = z + 5*dt
    end
    function down()
        z = z - 5*dt
    end
    function right()
        x = x + 5*dt
    end
    function left()
        x = x - 5*dt
    end
    function space()
        y = y + 5*dt
    end
    function shift()
        y = y - 5*dt
    end

    function love.draw()
        love.graphics.print("Z = ",200,100)
        love.graphics.print(z,230,100)
        love.graphics.print("X = ",200,120)
        love.graphics.print(x,230,120)
        love.graphics.print("Y = ",200,140)
        love.graphics.print(y,230,140)
        if love.keyboard.isDown("up") then
            up()
        else if love.keyboard.isDown("down") then
            down()
        else if love.keyboard.isDown("right") then
            right()
        else if love.keyboard.isDown("left") then
            left()
        else if love.keyboard.isDown("space") then
            space()
        else if love.keyboard.isDown("lshift") then
            shift()
        end
        end
        end
        end
        end
        end
        end
    end

function love.draw()
    --love.graphics.draw(bois, 0, 0)
    local major, minor, revision, codename = love.getVersion() --Uygulamanın versiyonunu alır
    local str = string.format("Version %d.%d.%d - %s", major, minor, revision, codename)
    love.graphics.print(str, 300, 200)--ekranı conf.lua kısmından ayarlayabilirsin
    --print("resim gösterildi")
end
