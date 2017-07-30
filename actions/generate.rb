#!/bin/env ruby
# encoding: utf-8

class ActionGenerate

  include Action
  
  def initialize q = nil

    super

    @name = "Generate"
    @docs = "List missing logs and terms."

  end

  def act q = "Home"

    load_folder("#{@host.path}/objects/*")

    $dictionaery = Dictionaery.new(@host.path)
    $aebeth = Aebeth.new(@host.path)

    return Dictionaery.new(@host.path).generate

  end

end