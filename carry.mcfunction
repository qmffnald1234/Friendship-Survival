# 원본영상 : https://youtu.be/xxbOPP4hJTg
# 업고 가는 우정 야생
title @a times 10 100 20
title @a title {"text":"우리는 너무 친하다"}
gamemode adventure @a[tag=player1]
gamemode survival @a[tag=player2]
    execute as @a[tag=player1] at @s run tp @a[tag=player2] ~ ~4 ~
    execute as @a[tag=player2] store result entity @s Rotation[0] float 1 run data get entity @a[tag=player1,limit=1] Rotation[0]
    execute as @a[tag=player2] store result entity @s Rotation[1] float 1 run data get entity @a[tag=player1,limit=1] Rotation[1]
    execute as @e[tag=player2] store result entity @s Pose.Head[0] float 1 run data get entity @a[tag=player1,limit=1] Rotation[1]