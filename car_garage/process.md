## Notes on process followed

Step 1:

* Mapped out on paper database name,  table names and field names & types

Step 2:

* Created folder structure and empty files in relevant folders

Step 3:

* Created database via psql "createdb" command

Step 4:

* Populated car_garage.sql file with details for the tables, fields and relationships
* Created tables in psql db using "psql -d car_garage -f car_garage.sql"
* NB: Ensure end of each line has a comma apart from he last
* Connected to db using "psql -d car_garage" command
* Confirmed all tables were present using "-d"

Step 5

* Populated sql_runner.sql file
* NB: for this excersise I have included the require('pg') in the sql_runner file.

Step 6

* Populated car.rb and dealer.rb files with initial details - require.., class, initialize.
* Populated with Save, Update, Delete instance methods and List class methods

Step 7

* Populated console.rb with dealers and related cars
* Ran console.rb
* Fixed errors
* cleared tables
* ran console again


