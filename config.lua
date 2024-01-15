Config = {}

Config.Main = {
  enableDoorScript = true, -- Enable / Disable the usage of the /toggledoor script.
  enableWindowScript = true, -- Enable / Disable the usage of the /togglewindow script.
}

Config.Doors = {

  Basic = {
    mainCommand = "toggledoor", -- Main command name that is used to trigger the other commands. (/toggledoor rdoors) DO NOT CHANGE!!!
    requirePermissions = false -- Enable / Disable the need to use permissions for this command. (Default = false) (add_ace group.staff door.control allow)
  },

  Commands = {
    RearDoors = "rdoors", -- Command name for opening the rear doors (Usually for vehicles that have 2 doors in the back.)
    DriverDoor = "driver", -- Command name for opening the driver's door's door.
    PassengerDoor = "passenger", -- Command name for opening the front passenger's door.
    RearDriverDoor = "rdriver", -- Command name for opening the rear driver side door.
    RearPassengerDoor = "rpassenger", -- Command name for opening the rear passenger side door. 
    Trunk = "trunk", -- Command name for opening the trunk of the vehicle. 
    Hood = "hood" -- Command name for opening the hood of the vehicle.
  },

  OpenText = {
    TrunkOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your trunk!", -- Text that shows when you open your trunk!
    HoodOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your hood!", -- Text that shows when you open your hood!
    DriverDoorOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your driver door!", -- Text that shows when you open your driver door!
    PassengerDoorOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your passenger door!", -- Text that shows when you open your passenger door!
    RearDoorsOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your rear doors!", -- Text that shows when you open your rear doors!
    RearPassengerDoorOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your rear passenger side door!", -- Text that shows when you open your rear passenger door!
    RearDriverDoorOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your rear driver side door!" -- Text that shows when you open your rear driver side door!
  },

  CloseText = {
    TrunkClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your trunk!", -- Text that shows when you open your trunk!
    HoodClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your hood!", -- Text that shows when you open your hood!
    DriverDoorClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your driver door!", -- Text that shows when you open your driver door!
    PassengerDoorClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your passenger door!", -- Text that shows when you open your passenger door!
    RearDoorsClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your rear doors!", -- Text that shows when you open your rear doors!
    RearPassengerDoorClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your rear passenger side door!", -- Text that shows when you open your rear passenger door!
    RearDriverDoorClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your rear driver side door!" -- Text that shows when you open your rear driver side door!
  },

  FailText = {
    NoPermission = "[~b~SimpleVehControl~w~]: ~r~You lack permissions needed to use \"/toggledoor\"!", -- Text that shows when you lack permissions to use the command. 
    InvalidArguments = "[~b~SimpleVehControl~w~]: ~r~The argument you put was invalid! Please make sure it's valid!", -- Text that shows when you don't put any arguments.
    NotNearYourVehicle = "[~b~SimpleVehControl~w~]: ~r~You need to be close / next to your vehicle in order to manage doors!" -- Text that shows when you aren't close enough to a vehicle.
  },

}

Config.Windows = {

  Basic = {
    mainCommand = "togglewindow", -- Main Command name that is used to trigger the other commands. (/togglewindow driver) DO NOT CHANGE!!
    requirePermissions = false -- Enable / Disable the need to use permissions for this command. (Default = false) (add_ace group.staff window.control allow)
  },

  Commands = {
    DriverWindow = "driver", -- Command name for opening the driver side window.
    PassengerWindow = "passenger", -- Command name for opening the passenger side window.
    RearDriverWindow = "rdriver", -- Command name for opening the rear driver side window.
    RearPassengerWindow = "rpassenger", -- Command name for opening the rear passenger side window.
    AllWindows = "all", -- Command name for opening all the vehicle's windows.
    FrontWindows = "front", -- Command name for opening only the front windows in the vehicle.
    RearWindows = "rear" -- Command name for opening only the rear windows in the vehicle.
  },

  OpenText = {
    FrontLeftOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your driver window!", -- Text that shows when you open your driver window!
    FrontRightOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your passenger window!", -- Text that shows when you open your passenger window!!
    FrontWindowsOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your front windows!", -- Text that shows when you open your front windows!
    RearLeftOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your driver side rear window!", -- Text that shows when you open your driver side rear window!
    RearRightOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your passenger rear window!", -- Text that shows when you open your passenger rear window!
    RearWindowsOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~your rear windows!", -- Text that shows when you open both of your rear windows!
    AllWindowsOpen = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~opened ~g~all of your windows!" -- Text that shows when you open all your vehicle windows!
  },

  CloseText = {
    FrontLeftClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your driver window!", -- Text that shows when you open your driver window!
    FrontRightClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your passenger window!", -- Text that shows when you open your passenger window!!
    FrontWindowsClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your front windows!", -- Text that shows when you open your front windows!
    RearLeftClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your driver side rear window!", -- Text that shows when you open your driver side rear window!
    RearRightClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your passenger rear window!", -- Text that shows when you open your passenger rear window!
    RearWindowsClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~your rear windows!", -- Text that shows when you open both of your rear windows!
    AllWindowsClose = "[~b~SimpleVehControl~w~]: ~g~You have successfully ~y~closed ~g~all of your windows!" -- Text that shows when you open all your vehicle windows!
  },

  FailText = {
    NoPermission = "[~b~SimpleVehControl~w~]: You lack permissions needed to use \"/togglewindow\"", -- Text that shows when you lack permissions to use the command. 
    InvalidArguments = "[~b~SimpleVehControl~w~]: ~r~Make sure to add an argument! Doing the command alone won't work!", -- Text that shows when you don't put any arguments.
    NotNearYourVehicle = "[~b~SimpleVehControl~w~]: ~r~You need to be in a vehicle in order to manage the windows!" -- Text that shows when you aren't close enough to a vehicle.
  },
}