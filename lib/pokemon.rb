class Pokemon
  attr_accessor :name, :type, :id, :db 
  
  def initialize(arguments)
    arguments.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon
      (name, type, db)
      VALUES (?,?)
    SQL
    DB[:conn].execute(sql, name, type, db)
    
  end
  
end
