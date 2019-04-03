class Owner

@@all = []

attr_accessor :name, :pets
attr_reader :species

def self.all
  @@all
end

def initialize(species)
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
  @@all << self
end

def self.count
  # @@all.count works also
  @@all.size
end

def self.reset_all
  @@all.clear
end

def say_species
  "I am a #{species}."
end

def buy_fish(fish_name)
  @pets[:fishes] << Fish.new(fish_name)
end







end
