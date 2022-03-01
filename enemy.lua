enemies = {}

function spawnEnemy(x, y)
    local enemy = world:newRectangleCollider(x, y, 70, 90 {collision_class = "Danger"})
    enemy.direction = 1
    enemy.speed = 200 
    table.insert(enemies, enmy)
end

function updateEnemies(dt)
    for i,e in ipairs(enemies) do 
        local ex, ey = e:getPosition()

        local colliders = world:queryRectangleArea(ex + (40 * e.direction), ey + 40, 10, 10, {'Platform'})
        if #colliders == 0 then 
            e.direction = e.direction * -1 -- this line makes the direct -1 or 1 so it will c hange direction 
        end

        e:setX(ex + e.speed * dt * e.direction)
    end
end