class Pokemon
  attr_accessor :name, :type, :id, :db 
  
  def initialize(arguments)
    arguments.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def self.save
    sql = <<-SQL
      INSERT INTO pokemon
      (name, type, db)
      VALUES 
    SQL
    
  end
  
end
