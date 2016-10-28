#!/bin/env ruby
# encoding: utf-8

class VesselLietal

  include Vessel

  def initialize id = 0

    super

    @name = "Lietal"
    @path = File.expand_path(File.join(File.dirname(__FILE__), "/"))

    install(:default,:serve)
    install(:default,:print)

  end

end

class ActionServe

  include Action

  def act q = "Home"

    load_folder("#{@host.path}/objects/*")

    docs = Documentation.new(@host.path)
    dict = Dictionaery.new(@host.path)

    docs.dictionaery = dict

    return docs.to_s

  end

end

class ActionPrint

  include Action

  def act q = "Home"

    load_folder("#{@host.path}/objects/*")

    d = Memory_Hash.new("dictionaery",@host.path).to_h
    d.each do |aeth,content|
      d[aeth]['ADL'] = Aeth.new(aeth).adultspeak
    end

    require 'json'

    return d.to_json

  end

end