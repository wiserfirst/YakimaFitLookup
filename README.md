# Yakima

Unfortunately [Yakima's fit lookup site](http://www.fitlookup.yakima.com/) doesn't work and I had a Fullback bike rack from them.
This project tries to use their API (that still work) to get the precious fit information, like hub setting and fit notes. I've managed to get those for my car model. If there are other people who find this useful, I might improve it so it can work for other car models and may even add a simple web interface.

## Dependencies

### Elixir language

Please refer to http://elixir-lang.github.io/install.html for more information about how to install Elixir.

### PostgreSQL database
Please refer to the official installation guide https://www.postgresql.org/docs/9.6/static/tutorial-install.html

## Local setup

```
git clone https://github.com/wiserfirst/YakimaFitLookup.git
cd YakimaFitLookup
mix deps.get
mix ecto.create
mix ecto.migrate
```

### Note
If you use Postgres.app on OSX, the default config should work. Otherwise you might need to update the database config in `config/config.exs` accordingly

## fit details sample

```
%{"BaseCampMounts" => [], "BasePad" => "", "BasketMounts" => [],
  "BikeMounts" => [%{"Id" => "8002636", "Text" => "HALFBACK 2 "},
   %{"Id" => "8002634", "Text" => "FULLBACK 2 "},
   %{"Id" => "MAG4133", "Text" => "HalfBack"},
   %{"Id" => "MAG4131", "Text" => "FullBack"},
   %{"Id" => "8002635", "Text" => "HALFBACK 3 "},
   %{"Id" => "8002633", "Text" => "FULLBACK 3 "},
   %{"Id" => "MAG4133", "Text" => "HalfBack"},
   %{"Id" => "MAG4131", "Text" => "FullBack"}], "CargoMounts" => [],
  "Components" => [%{"Name" => "", "PartNumber" => "",
     "Role" => "Minimum Bar Size"}], "FitStatusId" => 1,
  "FitTeamComments" => "", "FitTypeId" => 2, "FitTypeName" => "Strap Rack",
  "Hardware" => nil, "Id" => 18419, "Images" => [2, 3, 4, 5],
  "InternalComments" => nil, "Logs" => nil,
  "Measurements" => [%{"Formatted" => "5 1/2 \"",
     "Label" => "Bumper or Hatch to Base Pad", "Value" => 5.5},
   %{"Formatted" => "54 1/2 \"", "Label" => "Arm To Ground", "Value" => 54.5},
   %{"Formatted" => "12 \"", "Label" => "Bike To Car Clearance",
     "Value" => 12.0},
   %{"Formatted" => "3", "Label" => "Hub Setting", "Value" => 3.0}],
  "NoFit" => false,
  "Notes" => [%{"Id" => 251,
     "Text" => "Place the upper strap hooks at the top edge of trunk, hatch lid, or rear door."},
   %{"Id" => 252,
     "Text" => "Outer/lower support frame rests on the upper portion of the license plate."},
   %{"Id" => 258,
     "Text" => "Place the lower strap hooks at the bottom edge of the trunk, hatch lid, or rear door."},
   %{"Id" => 275, "Text" => "Do not use rear wiper when carrier is installed."},
   %{"Id" => 285,
     "Text" => "Yakima trunk mounted racks weight limit for 2 bikes is 60 lbs. / 3 bikes is 90 lbs."}],
  "PublicComments" => "", "PublishedDate" => "01/03/2017",
  "ShowHatchClearance" => false,
  "SimpleMounts" => [%{"Id" => "8002636", "Text" => "HALFBACK 2 "},
   %{"Id" => "8002634", "Text" => "FULLBACK 2 "},
   %{"Id" => "8002635", "Text" => "HALFBACK 3 "},
   %{"Id" => "8002633", "Text" => "FULLBACK 3 "}], "SnowMounts" => [],
  "VehicleName" => "Subaru Impreza 5dr 2017-2018 (USA)", "WaterMounts" => []}
```
