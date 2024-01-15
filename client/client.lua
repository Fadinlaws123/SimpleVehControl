-- Door Control Functions.

Citizen.CreateThread(function()
  if Config.Main.enableDoorScript == true then
    TriggerEvent('chat:addSuggestion', '/toggledoor', 'Open / Close any door on your vehicle!', {
      {name = 'Argument', help = '| ' .. Config.Doors.Commands.DriverDoor .. ' | ' .. Config.Doors.Commands.PassengerDoor .. ' | ' .. Config.Doors.Commands.RearDriverDoor .. ' | ' .. Config.Doors.Commands.RearPassengerDoor .. ' | ' .. Config.Doors.Commands.RearDoors .. ' | ' .. Config.Doors.Commands.Trunk .. ' | ' .. Config.Doors.Commands.Hood .. ' |'}
    })
  end
  if Config.Main.enableWindowScript == true then 
    TriggerEvent('chat:addSuggestion', '/togglewindow', 'Open / Close any window on your vehicle!', {
      {name = 'Argument', help = '| ' .. Config.Windows.Commands.DriverWindow .. ' | ' .. Config.Windows.Commands.PassengerWindow .. ' | ' .. Config.Windows.Commands.RearDriverWindow .. ' | ' .. Config.Windows.Commands.RearPassengerWindow .. ' | ' .. Config.Windows.Commands.AllWindows .. ' | ' .. Config.Windows.Commands.FrontWindows .. ' | ' .. Config.Windows.Commands.RearWindows .. ' |'}
    }) 
  end
  if Config.Main.enableEngineScript == true then
    TriggerEvent('chat:addSuggestion', '/engine', 'Turn your vehicle\'s engine on / off.', {
      {name = 'Argument', help = ' | ' .. Config.Engine.Commands.EngineOn .. ' | ' .. Config.Engine.Commands.EngineOff .. ' |'}
    })  
  end
end)

if Config.Main.enableDoorScript == true then 
  RegisterNetEvent('SimpleVehControl:doors:RearDoor')
  AddEventHandler('SimpleVehControl:doors:RearDoor', function()
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, true)
    local isOpen = GetVehicleDoorAngleRatio(vehicle, 2) and GetVehicleDoorAngleRatio(vehicle, 3)
    local distanceToVehicle = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(vehicle), 1)

    if distanceToVehicle <= 3.5 then 
      if isOpen == 0 then
        SetVehicleDoorOpen(vehicle, 2, 0, 0)
        SetVehicleDoorOpen(vehicle, 3, 0, 0)
        Notify(Config.Doors.OpenText.RearDoorsOpen)
      else 
        SetVehicleDoorShut(vehicle, 2, 0)
        SetVehicleDoorShut(vehicle, 3, 0)
        Notify(Config.Doors.CloseText.RearDoorsClose)
      end
    else
      Notify(Config.Doors.FailText.NotNearYourVehicle)
    end
  end)


  RegisterNetEvent('SimpleVehControl:doors:DriverDoor')
  AddEventHandler('SimpleVehControl:doors:DriverDoor', function(driver)
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, true)
    local isOpen = GetVehicleDoorAngleRatio(vehicle, 0)
    local distanceToVehicle = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(vehicle), 1)

    if distanceToVehicle <= 3.5 then 
      if isOpen == 0 then
        SetVehicleDoorOpen(vehicle, 0, 0, 0)
        Notify(Config.Doors.OpenText.DriverDoorOpen)
      else 
        SetVehicleDoorShut(vehicle, 0, 0)
        Notify(Config.Doors.CloseText.DriverDoorClose)
      end
    else
      Notify(Config.Doors.FailText.NotNearYourVehicle)
    end
  end)

  RegisterNetEvent('SimpleVehControl:doors:PassDoor')
  AddEventHandler('SimpleVehControl:doors:PassDoor', function()
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, true)
    local isOpen = GetVehicleDoorAngleRatio(vehicle, 1)
    local distanceToVehicle = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(vehicle), 1)

    if distanceToVehicle <= 3.5 then 
      if isOpen == 0 then
        SetVehicleDoorOpen(vehicle, 1, 0, 0)
        Notify(Config.Doors.OpenText.PassengerDoorOpen)
      else 
        SetVehicleDoorShut(vehicle, 1, 0)
        Notify(Config.Doors.CloseText.PassengerDoorClose)
      end
    else
      Notify(Config.Doors.FailText.NotNearYourVehicle)
    end
  end)

  RegisterNetEvent('SimpleVehControl:doors:RearDriverDoor')
  AddEventHandler('SimpleVehControl:doors:RearDriverDoor', function()
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, true)
    local isOpen = GetVehicleDoorAngleRatio(vehicle, 2)
    local distanceToVehicle = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(vehicle), 1)

    if distanceToVehicle <= 3.5 then 
      if isOpen == 0 then
        SetVehicleDoorOpen(vehicle, 2, 0, 0)
        Notify(Config.Doors.OpenText.RearDriverDoorOpen)
      else 
        SetVehicleDoorShut(vehicle, 2, 0)
        Notify(Config.Doors.CloseText.RearDriverDoorClose)
      end
    else
      Notify(Config.Doors.FailText.NotNearYourVehicle)
    end
  end)

  RegisterNetEvent('SimpleVehControl:doors:RearPassDoor')
  AddEventHandler('SimpleVehControl:doors:RearPassDoor', function()
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, true)
    local isOpen = GetVehicleDoorAngleRatio(vehicle, 3)
    local distanceToVehicle = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(vehicle), 1)

    if distanceToVehicle <= 3.5 then 
      if isOpen == 0 then
        SetVehicleDoorOpen(vehicle, 3, 0, 0)
        Notify(Config.Doors.OpenText.RearPassengerDoorOpen)
      else 
        SetVehicleDoorShut(vehicle, 3, 0)
        Notify(Config.Doors.CloseText.PassengerDoorClose)
      end
    else
      Notify(Config.Doors.FailText.NotNearYourVehicle)
    end
  end)

  RegisterNetEvent('SimpleVehControl:doors:Hood')
  AddEventHandler('SimpleVehControl:doors:Hood', function()
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, true)
    local isOpen = GetVehicleDoorAngleRatio(vehicle, 4)
    local distanceToVehicle = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(vehicle), 1)

    if distanceToVehicle <= 3.5 then 
      if isOpen == 0 then
        SetVehicleDoorOpen(vehicle, 4, 0, 0)
        Notify(Config.Doors.OpenText.HoodOpen)
      else 
        SetVehicleDoorShut(vehicle, 4, 0)
        Notify(Config.Doors.CloseText.HoodClose)
      end
    else
      Notify(Config.Doors.FailText.NotNearYourVehicle)
    end
  end)

  RegisterNetEvent('SimpleVehControl:doors:Trunk')
  AddEventHandler('SimpleVehControl:doors:Trunk', function()
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, true)
    local isOpen = GetVehicleDoorAngleRatio(vehicle, 5)
    local distanceToVehicle = GetDistanceBetweenCoords(GetEntityCoords(player), GetEntityCoords(vehicle), 1)

    if distanceToVehicle <= 3.5 then 
      if isOpen == 0 then
        SetVehicleDoorOpen(vehicle, 5, 0, 0)
        Notify(Config.Doors.OpenText.TrunkOpen)
      else 
        SetVehicleDoorShut(vehicle, 5, 0)
        Notify(Config.Doors.CloseText.TrunkClose)
      end
    else
      Notify(Config.Doors.FailText.NotNearYourVehicle)
    end
  end)

  RegisterNetEvent('SimpleVehControl:Doors:InvalidArgs')
  AddEventHandler('SimpleVehControl:Doors:InvalidArgs', function()
    Notify(Config.Doors.FailText.InvalidArguments)
  end)

  RegisterNetEvent('SimpleVehControl:Doors:InvalidPerms')
  AddEventHandler('SimpleVehControl:Doors:InvalidPerms', function()
    Notify(Config.Doors.FailText.NoPermission)
  end)

  function Notify( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( true, true )
  end
end

-- Window Control Functions --

if Config.Main.enableWindowScript then

  local driverWindow = true
  local passengerWindow = true
  local rearDriverWindow = true
  local rearPassWindow = true



  function rearWindowControl()
    local player = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(player) then
      local vehicle = GetVehiclePedIsIn(player, false)
      if rearDriverWindow == true or rearPassWindow == true then
        RollDownWindow(vehicle, 2)
        RolldownWindow(vehicle, 3)
        rearDriverWindow = false 
        rearPassWindow = false
      else
        RollUpWindow(vehicle, 2)
        RollUpWindow(vehicle, 3)
        rearDriverWindow = true
        rearPassWindow = true
      end
    end
  end

  RegisterNetEvent('SimpleVehControl:windows:DriverWindow')
  AddEventHandler('SimpleVehControl:windows:DriverWindow', function()
    local player = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(player) then
      local vehicle = GetVehiclePedIsIn(player, false)
      if driverWindow == true then
        RollDownWindow(vehicle, 0)
        driverWindow = false 
        Notify(Config.Windows.OpenText.FrontLeftOpen)
      else
        RollUpWindow(vehicle, 0)
        driverWindow = true
        Notify(Config.Windows.CloseText.FrontLeftClose)
      end
    end
  end)

  RegisterNetEvent('SimpleVehControl:windows:PassengerWindow')
  AddEventHandler('SimpleVehControl:windows:PassengerWindow', function()
    local player = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(player) then
      local vehicle = GetVehiclePedIsIn(player, false)
      if passengerWindow == true then
        RollDownWindow(vehicle, 1)
        passengerWindow = false 
        Notify(Config.Windows.OpenText.FrontRightOpen)
      else
        RollUpWindow(vehicle, 1)
        passengerWindow = true
        Notify(Config.Windows.CloseText.FrontRightClose)
      end
    end
  end)

  RegisterNetEvent('SimpleVehControl:windows:RearDriverWindow')
  AddEventHandler('SimpleVehControl:windows:RearDriverWindow', function()
    local player = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(player) then
      local vehicle = GetVehiclePedIsIn(player, false)
      if rearPassWindow == true then
        RollDownWindow(vehicle, 1)
        rearPassWindow = false 
        Notify(Config.Windows.OpenText.RearLeftOpen)
      else
        RollUpWindow(vehicle, 1)
        rearPassWindow = true
        Notify(Config.Windows.CloseText.RearRightClose)
      end
    end
  end)

  RegisterNetEvent('SimpleVehControl:windows:AllWindows')
  AddEventHandler('SimpleVehControl:windows:AllWindows', function()
    local player = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(player) then
      local vehicle = GetVehiclePedIsIn(player, false)
      if driverWindow == true or passengerWindow == true or rearDriverWindow == true or rearPassWindow == true then
        RollDownWindow(vehicle, 0)
        RollDownWindow(vehicle, 1)
        RollDownWindow(vehicle, 2)
        RollDownWindow(vehicle, 3)
        driverWindow = false
        passengerWindow = false
        rearDriverWindow = false 
        rearPassWindow = false
        Notify(Config.Windows.OpenText.AllWindowsOpen)
      else
        RollUpWindow(vehicle, 0)
        RollUpWindow(vehicle, 1)
        RollUpWindow(vehicle, 2)
        RollUpWindow(vehicle, 3)
        driverWindow = true
        passengerWindow = true
        rearDriverWindow = true
        rearPassWindow = true
        Notify(Config.Windows.CloseText.AllWindowsClose)
      end
    end
  end)

  RegisterNetEvent('SimpleVehControl:windows:FrontWindows')
  AddEventHandler('SimpleVehControl:windows:FrontWindows', function()
    local player = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(player) then
      local vehicle = GetVehiclePedIsIn(player, false)
      if driverWindow == true or passengerWindow == true then
        RollDownWindow(vehicle, 0)
        RollDownWindow(vehicle, 1)
        driverWindow = false
        passengerWindow = false
        Notify(Config.Windows.OpenText.FrontWindowsOpen)
      else
        RollUpWindow(vehicle, 0)
        RollUpWindow(vehicle, 1)
        driverWindow = true
        passengerWindow = true
        Notify(Config.Windows.CloseText.FrontWindowsClose)
      end
    end
  end)

  RegisterNetEvent('SimpleVehControl:windows:RearWindows')
  AddEventHandler('SimpleVehControl:windows:RearWindows', function()
    local player = GetPlayerPed(-1)

    if IsPedSittingInAnyVehicle(player) then
      local vehicle = GetVehiclePedIsIn(player, false)
      if rearDriverWindow == true or rearPassWindow == true then
        RollDownWindow(vehicle, 2)
        RollDownWindow(vehicle, 3)
        rearDriverWindow = false 
        rearPassWindow = false
        Notify(Config.Windows.OpenText.RearWindowsOpen)
      else
        RollUpWindow(vehicle, 2)
        RollUpWindow(vehicle, 3)
        rearDriverWindow = true
        rearPassWindow = true
        Notify(Config.Windows.CloseText.RearWindowsClose)
      end
    end
  end)

  RegisterNetEvent('SimpleVehControl:Windows:InvalidArgs')
  AddEventHandler('SimpleVehControl:Windows:InvalidArgs', function()
    Notify(Config.Windows.FailText.InvalidArguments)
  end)

  RegisterNetEvent('SimpleVehControl:Windows:InvalidPerms')
  AddEventHandler('SimpleVehControl:Windows:InvalidPerms', function()
    Notify(Config.Windows.FailText.NoPermission)
  end)

  function Notify( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( true, true )
  end
end