require 'pry'
class Dog 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    save
  end   
  
  def self.all 
    @@all 
  end   
  
  def self.clear_all
    @@all.clear 
  end   
  
  def self.print_all 
    puts @@all.map{ |dog| dog.name } 
  end   
  
  def save 
    # binding.pry 
   if !@@all.include?(self) 
    # else 
      @@all << self 
    end   
  end   
end   