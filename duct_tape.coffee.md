Duct Tape
=========

    engine.lineCollision = (line) ->
      # TODO: All walls
      if wall = engine.first("Wall")
        hits = wall.lines().map (wallLine) ->
          [line.intersects(wallLine), wallLine]
        .select ([collision, wallLine]) ->
          collision

        nearestHit = hits.minimum ([point, wallLine]) ->
          line.start.distance(point)

        if nearestHit
          return nearestHit

      return []
