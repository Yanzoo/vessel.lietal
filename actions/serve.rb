#!/bin/env ruby
# encoding: utf-8

class ActionServe

  include Action

  def initialize q = nil

    super

    @name = "Serve"
    @docs = "Deliver html documentation."

  end
  
  def act q = ""

    load_folder("#{@host.path}/objects/*")  
    @dict = Dictionaery.new(@host.path)

    if q.like("type")
      return "<p>Experiment: <br />
      #{Aeth.new('ki').to_svg} #{Aeth.new('xi').to_svg} #{Aeth.new('si').to_svg} <br />
      #{Aeth.new('ta').to_svg} #{Aeth.new('da').to_svg} #{Aeth.new('la').to_svg} <br />
      #{Aeth.new('po').to_svg} #{Aeth.new('bo').to_svg} #{Aeth.new('vo').to_svg} <br />

      #{Aeth.new('kibota').to_svg}</p>"
    else
      documentation = Documentation.new(@host.path)
      documentation.dictionaery = @dict
      return documentation.to_s
    end

  end

end