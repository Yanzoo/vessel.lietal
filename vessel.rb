#!/bin/env ruby
# encoding: utf-8

class VesselLietal

  include Vessel

  def initialize id = 0

    super

    @name = "Lietal"
    @path = File.expand_path(File.join(File.dirname(__FILE__), "/"))
    @docs = "The lietal language toolchain."

    install(:custom,:translate)
    install(:custom,:serve)
    install(:custom,:print)
    install(:default,:document)
    install(:default,:help)

  end

end

class ActionServe

  include Action

  def initialize q = nil

    super

    @name = "Serve"
    @docs = "Deliver html documentation."

  end
  
  def act q = ""

    load_folder("#{@host.path}/objects/*")

    docs = Documentation.new(@host.path)
    dict = Dictionaery.new(@host.path)

    docs.dictionaery = dict

    return docs.to_s

  end

end

class ActionPrint

  include Action

  def initialize q = nil

    super

    @name = "Print"
    @docs = "List Dictionaery content as JSON."

  end
  
  def act q = ""

    load_folder("#{@host.path}/objects/*")

    d = Memory_Hash.new("dictionaery",@host.path).to_h
    d.each do |aeth,content|
      d[aeth]['ADL'] = Aeth.new(aeth).adultspeak
    end

    require 'json'

    return d.to_json

  end

end

class ActionTranslate

  include Action

  def initialize q = nil

    super

    @name = "Translate"
    @docs = "Translate English word into Lietal."

  end
  
  def act q = ""
    
    load_folder("#{@host.path}/objects/*")
  
    Memory_Hash.new("dictionaery",@host.path).to_h.each do |aeth,content|
      if !content['DEF'] then next end
      if !content['DEF'].like(q) then next end
      return "#{Aeth.new(aeth).to_s}, or #{Aeth.new(aeth).adultspeak}."
    end
    
    return "Unknown word."

  end

end