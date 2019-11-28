class AccessDatabase

  def self.get_all
    output = DatabaseConnection.query("SELECT * FROM my_table")
    output.map { |line| line }
  end

  def self.get_line(line)
    output = DatabaseConnection.query("SELECT * FROM my_table WHERE id = '#{line}';")
    output.map { |line| line }
  end

end
