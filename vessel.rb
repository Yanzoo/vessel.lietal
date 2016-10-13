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

  class Actions

    include ActionCollection

    def translate q = nil

      if !q then return "Missing text to translate." end

      path = File.expand_path(File.join(File.dirname(__FILE__), "/"))

      load_folder("#{path}/objects/*")

      d = Dictionaery.new(path)

      return d.translate(q,"lietal").capitalize

    end

    def print q = nil

      path = File.expand_path(File.join(File.dirname(__FILE__), "/"))
      load_folder("#{path}/objects/*")

      return Septambres.new("bata").to_svg

    end

  end

  def actions ; return Actions.new(self,self) end

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