# Rake allows the creation of scripts which can be run when the app is setup
# on a new machine. To run the scrips run 'rake <method name>' from the terminal
# e.g: 'rake setup'

require 'pg'

# Set up the example database on local machine:

task :setup do

  # Creates a new database called 'my_database':
  connection = PG.connect
  connection.exec('CREATE DATABASE my_database;')

  # Creates a table in the database called 'my_table' and adds the required
  # columns:
  connection = PG.connect :dbname => 'my_database';
  connection.exec('CREATE TABLE my_table (id SERIAL PRIMARY KEY, textcol1 VARCHAR(20), textcol2 VARCHAR(20), numcol1 INT, numcol2 INT);')

end

# Input data into database on local machine:

task :seed_db do

  # Connects to 'my_database' and inserts data into the 'my_table' table:
  connection = PG.connect :dbname => 'my_database';
  connection.exec ("INSERT INTO my_table VALUES (1, 'text1', 'text2', 01, 02);")

end
