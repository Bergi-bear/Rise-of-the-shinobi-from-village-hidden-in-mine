function SelectedAllPeon()
    local e = nil
    GroupEnumUnitsInRect(perebor, bj_mapInitialPlayableArea, nil)
    while true do
        e = FirstOfGroup(perebor)

        if e == nil then
            break
        end
        if UnitAlive(e) and GetUnitTypeId(e) == FourCC("opeo") then
            SelectUnitAddForPlayer(e,Player(0))
            local x,y=GetUnitXY(e)
            PanCameraToTimed(x,y,1)
        end
        GroupRemoveUnit(perebor, e)
    end
end