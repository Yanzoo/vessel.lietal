#!/bin/env ruby
# encoding: utf-8

class ActionTranslate

  include Action

  def initialize q = nil

    super

    @name = "Translate"
    @docs = "Translate English word into Lietal."

  end
  
  def act q = ""
    
    load_folder("#{@host.path}/objects/*")

    $dictionaery = Dictionaery.new(@host.path)
    $aebeth = Aebeth.new(@host.path)

    if q.include?(".mh") then q = Memory_Hash.new(q.sub(".mh",""),@host.path).to_h["CONSTRUCTION"].join("\n") end
    
    return Dictionaery.new(@host.path).construct(q)

  end

end