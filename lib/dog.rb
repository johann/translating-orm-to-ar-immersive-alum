require 'pry'

class Dog < ActiveRecord::Base
  attr_accessor :breed


#name: 'Teddy', breed: 'cockapoo'

  def self.find_or_create_by(name:, breed:)

      dog = Dog.find_by_name(name)
      dog || Dog.create(name: name, breed: breed)

      # if dog
      #   dog
      # else
      #   Dog.create(name: name, breed: breed)
      # end
  end

end
