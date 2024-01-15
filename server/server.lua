-- Door Control --
if Config.Main.enableDoorScript == true then
  RegisterCommand(Config.Doors.Basic.mainCommand, function(source, args, rawCommand)
    local src = source
      if Config.Doors.Basic.requirePermissions == true then
        if IsPlayerAceAllowed(source, 'door.control') then
          if args[1] == Config.Doors.Commands.RearDoors then
            TriggerClientEvent('SimpleVehControl:doors:RearDoor', rdoor)
          elseif args[1] == Config.Doors.Commands.DriverDoor then
            TriggerClientEvent('SimpleVehControl:doors:DriverDoor', ddoor)
          elseif args[1] == Config.Doors.Commands.PassengerDoor then
            TriggerClientEvent('SimpleVehControl:doors:PassDoor', pdoor)
          elseif args[1] == Config.Doors.Commands.RearDriverDoor then
            TriggerClientEvent('SimpleVehControl:doors:RearDriverDoor', rddoor)
          elseif args[1] == Config.Doors.Commands.RearPassengerDoor then
            TriggerClientEvent('SimpleVehControl:doors:RearPassDoor', rpdoor)
          elseif args[1] == Config.Doors.Commands.Trunk then
            TriggerClientEvent('SimpleVehControl:doors:Trunk', trunk)
          elseif args[1] == Config.Doors.Commands.Hood then
            TriggerClientEvent('SimpleVehControl:doors:Hood', hood)
          else
            TriggerClientEvent('SimpleVehControl:Doors:InvalidArgs', -1)
            return
          end
        else
            TriggerClientEvent('SimpleVehControl:Doors:InvalidPerms', -1)
            return
        end
      else
        if args[1] == Config.Doors.Commands.RearDoors then
          TriggerClientEvent('SimpleVehControl:doors:RearDoor', -1)
        elseif args[1] == Config.Doors.Commands.DriverDoor then
          TriggerClientEvent('SimpleVehControl:doors:DriverDoor', -1)
        elseif args[1] == Config.Doors.Commands.PassengerDoor then
          TriggerClientEvent('SimpleVehControl:doors:PassDoor', -1)
        elseif args[1] == Config.Doors.Commands.RearDriverDoor then
          TriggerClientEvent('SimpleVehControl:doors:RearDriverDoor', -1)
        elseif args[1] == Config.Doors.Commands.RearPassengerDoor then
          TriggerClientEvent('SimpleVehControl:doors:RearPassDoor', -1)
        elseif args[1] == Config.Doors.Commands.Trunk then
          TriggerClientEvent('SimpleVehControl:doors:Trunk', -1)
        elseif args[1] == Config.Doors.Commands.Hood then
          TriggerClientEvent('SimpleVehControl:doors:Hood', -1)
        else
          TriggerClientEvent('SimpleVehControl:Doors:InvalidArgs', -1)
        end
      end
  end)
end

-- Window Control -- 
if Config.Main.enableWindowScript == true then
  RegisterCommand(Config.Windows.Basic.mainCommand, function(source, args, rawCommand)
    local src = source
      
      if Config.Windows.Basic.requirePermissions == true then
        if IsPlayerAceAllowed (source, 'window.control') then
          if args[1] == Config.Windows.Commands.DriverWindow then
            TriggerClientEvent('SimpleVehControl:windows:DriverWindow', -1)
          elseif args[1] == Config.Windows.Commands.PassengerWindow then
            TriggerClientEvent('SimpleVehControl:windows:PassengerWindow', -1)
          elseif args[1] == Config.Windows.Commands.RearDriverWindow then
            TriggerClientEvent('SimpleVehControl:windows:RearDriverWindow', -1)
          elseif args[1] == Config.Windows.Commands.RearPassengerWindow then
            TriggerClientEvent('SimpleVehControl:windows:RearPassWindow', -1)
          elseif args[1] == Config.Windows.Commands.AllWindows then
            TriggerClientEvent('SimpleVehControl:windows:AllWindows', -1)
          elseif args[1] == Config.Windows.Commands.FrontWindows then
            TriggerClientEvent('SimpleVehControl:windows:FrontWindows', -1)
          elseif args[1] == Config.Windows.Commands.RearWindows then
            TriggerClientEvent('SimpleVehControl:windows:RearWindows', -1)
          else
            TriggerClientEvent('SimpleVehControl:Windows:InvalidArgs', -1)
          end
        else
          TriggerClientEvent('SimpleVehControl:Windows:InvalidArgs', -1)
        end
      else
        if args[1] == Config.Windows.Commands.DriverWindow then
          TriggerClientEvent('SimpleVehControl:windows:DriverWindow', -1)
        elseif args[1] == Config.Windows.Commands.PassengerWindow then
          TriggerClientEvent('SimpleVehControl:windows:PassengerWindow', -1)
        elseif args[1] == Config.Windows.Commands.RearDriverWindow then
          TriggerClientEvent('SimpleVehControl:windows:RearDriverWindow', -1)
        elseif args[1] == Config.Windows.Commands.RearPassengerWindow then
          TriggerClientEvent('SimpleVehControl:windows:RearPassWindow', -1)
        elseif args[1] == Config.Windows.Commands.AllWindows then
          TriggerClientEvent('SimpleVehControl:windows:AllWindows', -1)
        elseif args[1] == Config.Windows.Commands.FrontWindows then
          TriggerClientEvent('SimpleVehControl:windows:FrontWindows', -1)
        elseif args[1] == Config.Windows.Commands.RearWindows then
          TriggerClientEvent('SimpleVehControl:windows:RearWindows', -1)
        else
          TriggerClientEvent('SimpleVehControl:Windows:InvalidArgs', -1)
        end
      end
  end)
end