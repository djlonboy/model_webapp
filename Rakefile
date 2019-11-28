require 'pg'

task :setup do
  # Set up database on local machine

  connection = PG.connect
  connection.exec('CREATE DATABASE my_database;')

  connection = PG.connect :dbname => 'my_database';
  connection.exec('CREATE TABLE my_table (id SERIAL PRIMARY KEY, textcol1 VARCHAR(20), textcol2 VARCHAR(20), numcol1 INT, numcol2 INT);')

end

task :seed_db do
  # Input data into database on local machine

  connection = PG.connect :dbname => 'my_database';
  connection.exec ("INSERT INTO my_table VALUES (1, 'text1', 'text2', 01, 02);")

end
