class AccessDatabase

  # Gets all data from the database and returns as nested array:

  def self.get_all
    output = DatabaseConnection.query("SELECT * FROM my_table")
    output.map { |line| line }
  end

  # Takes a line number and returns that line of the db in a nested array:

  def self.get_line(line)
    output = DatabaseConnection.query("SELECT * FROM my_table WHERE id = '#{line}';")
    output.map { |line| line }
  end

end
