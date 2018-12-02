class Player
  attr_accessor :name,:position, :age, :height, :weight
  @@all = []
  def initialize(hash)
    hash.each{|key, value| self.send("#{key}=", value)}
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
