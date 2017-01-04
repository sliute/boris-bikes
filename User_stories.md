|Objects | Messages |
| --- | ----|
|Person |     |
| Bike | working? |
| DockingStation | release_bike |


Person  <--request--> DockingStation
DockingStation <-- release_bike --> Bike
Bike <--working?--> true / false
