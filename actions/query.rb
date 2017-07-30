#!/bin/env ruby
# encoding: utf-8

class ActionQuery

  include Action
  
  def initialize q = nil

    super

    @name = "Query"
    @docs = "List missing logs and terms."

  end

  def act q = "Home"

    if q.like("dict") then return get_dict end

  end

  private

  def get_dict

    load_folder("#{@host.path}/objects/*")

    $dictionaery = Dictionaery.new(@host.path)
    $aebeth = Aebeth.new(@host.path)

    return Dictionaery.new(@host.path).dict

  end

end