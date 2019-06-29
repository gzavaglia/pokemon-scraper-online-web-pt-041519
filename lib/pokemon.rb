class Pokemon
  attr_accessor :name, :type, :id, :db 
  
  def initialize(arguments)
    arguments.each do {|key, value| self.send( key, value )}
  end
  
end
