class Player
  attr_accessor :name,:position, :age, :height, :weight
  @@all = []
  def initialize#(hash)
    #hash.each{|x,y| self.send(x,y)}
    self.class.all << self
  end
  def self.all
    @@all
  end
  def self.reset
    self.all.clear
  end
  def self.count
    self.all.length
  end
end
