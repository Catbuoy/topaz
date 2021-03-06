-----------------------------------
-- Area: Temenos
--  Mob: Abyssdweller Jhabdebb
-----------------------------------
require("scripts/globals/limbus");
-----------------------------------

function onMobEngaged(mob,target)
  if   (IsMobDead(16929010)==true and IsMobDead(16929011)==true and IsMobDead(16929012)==true and
        IsMobDead(16929013)==true and IsMobDead(16929014)==true and IsMobDead(16929015)==true
    ) then
       mob:setMod(tpz.mod.SLASHRES,1400);
       mob:setMod(tpz.mod.PIERCERES,1400);
       mob:setMod(tpz.mod.IMPACTRES,1400);
       mob:setMod(tpz.mod.HTHRES,1400);
  else
      mob:setMod(tpz.mod.SLASHRES,300);
      mob:setMod(tpz.mod.PIERCERES,300);
      mob:setMod(tpz.mod.IMPACTRES,300);
      mob:setMod(tpz.mod.HTHRES,300);
  end
  GetMobByID(16929006):updateEnmity(target);
  GetMobByID(16929007):updateEnmity(target);
end;

function onMobDeath(mob, player, isKiller)
          if (IsMobDead(16929005)==true and IsMobDead(16929006)==true and IsMobDead(16929007)==true) then
            GetNPCByID(16928768+78):setPos(-280,-161,-440);
            GetNPCByID(16928768+78):setStatus(tpz.status.NORMAL);
            GetNPCByID(16928768+473):setStatus(tpz.status.NORMAL);
          end
end;
