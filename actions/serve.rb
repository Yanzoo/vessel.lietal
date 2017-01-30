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

    documentation = Documentation.new(@host.path)
    documentation.dictionaery = Dictionaery.new(@host.path)
    documentation.aebeth = Aebeth.new(@host.path)
    return documentation.to_s

  end

end