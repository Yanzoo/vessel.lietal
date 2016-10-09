#!/bin/env ruby
# encoding: utf-8

class Lietl

  include Vessel

  class Corpse

    attr_accessor :dictionaery

    def result

      return "WAT"

    end

  end

  class PassiveActions

    include ActionCollection

    def answer q = "Home"

      @query   = q.include?(":") ? q.split(":").first.gsub("+"," ") : q.gsub("+"," ") 
      @module  = q.include?(":") ? q.split(":").last : nil

      path = File.expand_path(File.join(File.dirname(__FILE__), "/"))

      load_folder("#{path}/objects/*")
      load "#{path}/modules/documentation.rb"

      corpse = Corpse.new
      corpse.dictionaery = Dictionaery.new(path)
      return corpse.result

    end

  end
  
  def passive_actions ; return PassiveActions.new(self,self) end

end